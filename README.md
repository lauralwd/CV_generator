# CV generator

![Build CV](https://github.com/<your-org>/cv_generator/actions/workflows/build-cv.yml/badge.svg)

The main CV over-elaborate lives in the main branch.
Specific CVs trimmed and finetuned for specific job applications live in their dedicated branches.
Use `git worktree` to have multiple branches live side by side on your filesystem.

## Prerequisites

- **TeX Live** (2025 or later) with `latexmk`, `tikz`, `fontawesome5`, and other packages from `MySetup.tex`.
- **Git** (2.20+), ideally with `git worktree`.
- **GNU Make** for the provided Makefile.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-git-id>/cv_generator.git
   cd cv_generator
   ```
2. Add worktrees for application branches:
   ```bash
   git worktree add ../cv-<job-branch> <job-branch>
   ```
3. Build and view your CV locally:
   ```bash
   make all    # compile cv.pdf
   make clean  # remove auxiliary files
   ```
4. Push changes to GitHub to trigger the Actions workflow, which will generate a release asset:
   ```bash
   git push origin <job-branch>
   ```

## Customization

- **`vars.tex`**: override personal details, colors, and image paths per branch.
- **`MySetup.tex`**: configure global packages, macros, and styles.
- **`cv.tex`**: adjust layout or sections; most content is driven by variables and includes.