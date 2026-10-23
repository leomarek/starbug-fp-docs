# STARBUG Midterm Report (IEEE format)

LaTeX source for the midterm report *Compiling C for a Hint-Based VLIW: An LLVM Back End for STARBUG on RISC-V Wally*.

## Build

```sh
./build.sh       # or: latexmk -pdf main.tex
```

This produces `main.pdf` and a copy named `STARBUG_Midterm_Report.pdf`. The build needs `pdflatex`, `bibtex`, TikZ and pgfplots (included in standard TeX Live). `IEEEtran.cls` (v1.8b) and `IEEEtran.bst` (v1.13) are included in this folder, so no extra packages are required.

## Layout

| file | contents |
|---|---|
| `main.tex` | report text |
| `references.bib` | bibliography (IEEEtran style) |
| `figures/fig-architecture.tex` | Fig. 1, bundle encoding and lane structure (TikZ) |
| `figures/fig-compiler.tex` | Fig. 2, LLVM pass placement and the layout-pass split (TikZ) |
| `figures/fig-speedup.tex` | Fig. 3, compiler vs. hand speedup (pgfplots; data inline) |
| `IEEEtran.cls`, `IEEEtran.bst` | IEEE class and bibliography style |

All figures are drawn from source, with no image files. The data in Fig. 3 and Table II come from `llvm_results/paper/02-results.md` (V2 measurements, layout pass on).
