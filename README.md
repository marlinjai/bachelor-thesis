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
| `make open` | Build and open the PDF (system handler — Evince here) |
| `make chrome` | Build and open the PDF in Chrome's viewer |
| `make wordcount` | Word count across all included files |
| `make clean` | Remove aux files, keep the PDF |
| `make distclean` | Remove everything under `build/` |

Output lands in `build/main.pdf`.

## Current draft

**The thesis is written in Italian.** Language handling is wired through
`babel` (Italian primary, English and German available for a second-language
abstract and for citations), `cleveref`, `glossaries-italian` and biblatex's
`italian.lbx`.

The topic is the CBAM entry from the research file — *Un prelievo sul carbonio
alla frontiera ridirige gli scambi?* — a difference-in-differences study of the
EU carbon border adjustment's definitive regime (January 2026), using CBAM's
CN-code scope boundary as the treatment/control split.

Chapters 1–5 are drafted. Chapter 6 (*Risultati*) holds the table and figure
layouts with placeholder cells; chapters 7–8 are outlined against those.
Nothing has been estimated yet.

The English draft of the same text is preserved in git history at commit
`963ff5f`. The generic software-project chapters that shipped with the original
template are in `template-original/chapters-software-project/`.

> Note: languages must be declared as **global class options** in `main.tex`,
> not as `babel` package options — `cleveref` only detects the document
> language from class options and otherwise silently falls back to English
> ("Il Chapter 2").

## Research

`research/thesis-topics-2026.html` is the topic shortlist this thesis was
chosen from — 24 candidate questions with their data requirements and
identification strategies. Open it in a browser.

## Layout

```
main.tex                  document skeleton — the order of everything
metadata.tex              ← EDIT FIRST: title, name, supervisors, degree
preamble.tex              packages and global config
glossary.tex              glossary entries and acronyms
references.bib            bibliography (biblatex, IEEE style)
frontmatter/              title page, acknowledgments, abstracts (IT + EN)
research/                 the topic shortlist this thesis came from
chapters/01..08-*.tex     the actual content (CBAM draft, Italian)
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
