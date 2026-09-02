#!/usr/bin/env bash
# Reinstall the project-local TeX Live from scratch (no root required).
# Takes ~10-20 min and ~1 GB. Only needed on a fresh clone.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TL="$ROOT/.texlive"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "==> downloading TeX Live installer"
curl -sSL -o "$TMP/install-tl.tar.gz" \
  https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xzf "$TMP/install-tl.tar.gz" -C "$TMP"
INST="$(find "$TMP" -maxdepth 1 -type d -name 'install-tl-*' | head -1)"

cat > "$TMP/tl.profile" <<EOF
selected_scheme scheme-small
TEXDIR $TL/2026
TEXMFLOCAL $TL/texmf-local
TEXMFSYSCONFIG $TL/2026/texmf-config
TEXMFSYSVAR $TL/2026/texmf-var
TEXMFCONFIG $TL/texmf-config
TEXMFVAR $TL/texmf-var
TEXMFHOME $TL/texmf-home
instopt_adjustpath 0
tlpdbopt_install_docfiles 0
tlpdbopt_install_srcfiles 0
EOF

echo "==> installing base (scheme-small)"
"$INST/install-tl" -profile "$TMP/tl.profile" -no-interaction

export PATH="$TL/2026/bin/x86_64-linux:$PATH"

echo "==> installing thesis packages"
tlmgr install $(tr '\n' ' ' < "$ROOT/texlive-packages.txt")

# TeX Live's biber is linked against libcrypt.so.1, which modern Arch no longer
# ships (libxcrypt provides .so.2). Fetch the compat library into .texlive/lib;
# bin/biber points LD_LIBRARY_PATH at it. No root, no system change.
if ! "$TL/2026/bin/x86_64-linux/biber" --version >/dev/null 2>&1; then
  echo "==> fetching libcrypt.so.1 compat library for biber"
  XCVER="$(pacman -Q libxcrypt 2>/dev/null | awk '{print $2}')"
  mkdir -p "$TL/lib"
  curl -fsSL -o "$TMP/libxc.pkg.tar.zst" \
    "https://geo.mirror.pkgbuild.com/core/os/x86_64/libxcrypt-compat-${XCVER}-x86_64.pkg.tar.zst"
  tar -xf "$TMP/libxc.pkg.tar.zst" -C "$TMP" usr/lib
  cp -a "$TMP"/usr/lib/libcrypt.so.1* "$TL/lib/"
fi

echo "==> done: $(pdflatex --version | head -1)"
echo "         $("$ROOT/bin/biber" --version)"
