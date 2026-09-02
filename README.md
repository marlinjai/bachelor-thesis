# Master's Thesis

LaTeX project for my Master's thesis at HTW Berlin, adapted from
[marlinjai/academic-thesis-template](https://github.com/marlinjai/academic-thesis-template)
(English content, German academic structure, KOMA-Script `scrbook`).

TeX Live is installed **inside this folder** (`.texlive/`), so nothing was
touched system-wide and no `sudo` was needed. The distribution is gitignored.

## Build

```bash
cd ~/Work/master-thesis
mise trust          # once — puts the local TeX Live on PATH automatically
make                # -> build/main.pdf
```

Without mise:

```bash
source ./activate.sh
make
```

| Command | What it does |
|---|---|
| `make` / `make pdf` | Full build (pdflatex → biber → makeglossaries → pdflatex ×2) |
| `make watch` | Rebuild + live-reload the viewer on every save |
| `make open` | Build and open the PDF |
| `make wordcount` | Word count across all included files |
| `make clean` | Remove aux files, keep the PDF |
| `make distclean` | Remove everything under `build/` |

Output lands in `build/main.pdf`.

## Layout

```
main.tex                  document skeleton — the order of everything
metadata.tex              ← EDIT FIRST: title, name, supervisors, degree
preamble.tex              packages and global config
glossary.tex              glossary entries and acronyms
references.bib            bibliography (biblatex, IEEE style)
frontmatter/              title page, acknowledgments, abstracts (DE + EN)
chapters/01..08-*.tex     the actual content
backmatter/               appendix, declaration of authorship
figures/                  images (\graphicspath is set here)
build/                    generated output — gitignored
template-original/        the untouched bachelor template, for reference
```

## Writing notes

- **Citations:** add entries to `references.bib`, cite with `\cite{key}`.
  Style is IEEE, ordered by first appearance (`sorting=none`).
- **Cross-references:** `\label{ch:foo}` / `\label{fig:bar}` and
  `\Cref{ch:foo}` — cleveref writes "Chapter 3" / "Figure 5.1" for you.
- **Glossary:** `\gls{API}` for terms, `\acrshort{llm}` / `\acrfull{llm}` for
  acronyms. Only entries you actually reference get printed.
- **Listings:** `\begin{lstlisting}[caption={...}, label={lst:...}]`,
  override the language per listing with `[language=TypeScript]`.
- **New chapter:** create `chapters/09-foo.tex`, add `\input{chapters/09-foo}`
  to `main.tex`.

## Reinstalling TeX Live

On a fresh clone the `.texlive/` folder is absent. Rebuild it with:

```bash
./install-latex.sh      # ~15 min, ~1 GB, no root
```

Extra packages are listed in `texlive-packages.txt`; add any you need and run
`tlmgr install <name>` (with the local TeX Live on PATH).

## VS Code

`.vscode/settings.json` configures LaTeX Workshop to use the project-local
`latexmk` and to write into `build/`. Install the *LaTeX Workshop* extension
(James Yu) and it should just work — no system LaTeX required.
