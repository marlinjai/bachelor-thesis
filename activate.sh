#!/usr/bin/env bash
# Fallback for shells without mise:  source ./activate.sh
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PATH="$ROOT/bin:$ROOT/.texlive/2026/bin/x86_64-linux:$PATH"
export TEXMFHOME="$ROOT/.texlive/texmf-home"
echo "TeX Live active: $(command -v pdflatex)"
echo "biber:           $(command -v biber)"
