# Academic Thesis Template (English/German)

A comprehensive LaTeX thesis template designed for German universities, following German academic conventions while supporting both English and German content.

## 📋 Overview

This repository provides two thesis templates:
- **English Template** (`thesis_template_english.tex`) - English content with German academic structure
- **German Template** (`thesis_template_german.tex`) - Full German academic thesis

Both templates are built based on **German academic conventions** with thoughtful organization of front and back matter for optimal reader experience. The structure follows the most common practices in German universities while maintaining international standards.

⚠️ **Important**: Always double-check with your specific academic institution's guidelines to ensure compliance with their requirements.

## 🚀 Quick Start

### Prerequisites
- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Visual Studio Code
- Git (for version control)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd academic-thesis-template
   ```

2. **Set up VSCode for LaTeX** (see detailed instructions below)

3. **Choose your template**
   - For English thesis: Use `thesis_template_english.tex`
   - For German thesis: Use `thesis_template_german.tex`

4. **Customize the template**
   - Update title page information
   - Modify bibliography file (`thesis_references.bib`)
   - Add your content to the chapters

## 🛠️ VSCode Setup Guide

⚠️ **Important**: VSCode LaTeX Workshop works best with file paths that don't contain spaces or special characters. If you encounter build issues, consider renaming your directory (e.g., `academic-thesis-template`) or use terminal compilation.

### Step 1: Install LaTeX Workshop Extension

1. Open VSCode
2. Go to Extensions (Ctrl+Shift+X / Cmd+Shift+X)
3. Search for "LaTeX Workshop"
4. Install the extension by James Yu

### Step 2: Create LaTeX Profile (Highly Recommended)

For optimal LaTeX writing experience, create a dedicated profile with only essential extensions:

#### Why Use a Separate Profile?
- **Distraction-free environment**: No unnecessary extensions or UI elements
- **Better performance**: Fewer extensions mean faster startup and operation
- **Clean interface**: Focus purely on writing and LaTeX compilation
- **Isolated settings**: LaTeX-specific configurations don't affect other development work

#### Creating the Profile:

1. **Create a new profile**:
   - Open Command Palette (Ctrl+Shift+P / Cmd+Shift+P)
   - Type "Profiles: Create Profile"
   - Select "Create Profile..."
   - Choose "Create from Current Profile" or "Create Empty Profile"
   - Name it "LaTeX Writing" or "Academic Writing"

2. **Configure essential extensions only**:
   ```
   Essential Extensions for LaTeX Profile:
   ✅ LaTeX Workshop (by James Yu) - Core LaTeX support
   ✅ Code Spell Checker (by Street Side Software) - Spell checking
   ✅ German Language Pack (if writing in German)
   ✅ Git Extension Pack (for version control)
   
   Optional but Useful:
   ✅ Word Count (by ms-vscode.wordcount) - Track document length
   ✅ Markdown All in One (for README editing)
   ✅ PDF Viewer (by tomoki1207.pdf) - Alternative PDF viewer
   
   Disable/Remove:
   ❌ All programming language extensions (Python, JavaScript, etc.)
   ❌ Debuggers and development tools
   ❌ Theme extensions (unless specifically needed)
   ❌ Any extensions not related to writing/LaTeX
   ```

3. **Optimize the interface**:
   - Hide unnecessary panels (Terminal, Problems, etc.)
   - Customize the Activity Bar to show only essential items
   - Set up a clean, minimal layout focused on writing

4. **Switch to LaTeX profile when working on thesis**:
   - Click profile icon in bottom-left corner
   - Select "LaTeX Writing" profile
   - VSCode will restart with your clean LaTeX environment

### Step 3: Workspace Configuration

The repository includes a pre-configured `.vscode/settings.json` with:

- **Build directory**: `./build` (keeps root clean, **automatically created** if missing)
- **Auto-build**: Enabled on save
- **Auto-clean**: Removes auxiliary files after build
- **PDF viewer**: Integrated tab viewer
- **Build recipes**: Multiple compilation options including biber/bibtex support
- **Directory management**: Build directory is created automatically on first compilation

### Key Features of the Configuration:

```json
{
    "latex-workshop.latex.outDir": "./build",
    "latex-workshop.latex.autoClean.run": "onBuilt",
    "latex-workshop.latex.autoBuild.run": "onSave",
    "latex-workshop.view.pdf.viewer": "tab",
    
    // Ensure build directory is created automatically
    "latex-workshop.latex.build.forceRecipeUsage": false,
    "latex-workshop.latex.build.clearCache.enabled": true,
    
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux", "*.bbl", "*.blg", "*.idx", "*.ind", 
        "*.lof", "*.lot", "*.out", "*.toc", "*.acn", 
        "*.acr", "*.alg", "*.glg", "*.glo", "*.gls", 
        "*.fls", "*.log", "*.fdb_latexmk", "*.synctex.gz"
    ]
}
```

**Important**: The `build/` directory is excluded from version control (via `.gitignore`) but will be **automatically created** when you first save and compile your LaTeX document. No manual setup required!

### Step 4: Profile-Specific Settings (Optional)

For your LaTeX profile, consider these additional settings:

```json
{
    // Writing-focused settings
    "editor.wordWrap": "on",
    "editor.lineNumbers": "off",
    "editor.minimap.enabled": false,
    "workbench.activityBar.visible": false,
    "workbench.statusBar.visible": true,
    
    // Spell checking
    "cSpell.language": "en,de",
    "cSpell.enableFiletypes": ["latex"],
    
    // LaTeX-specific
    "latex-workshop.message.error.show": true,
    "latex-workshop.message.warning.show": false
}
```

### Step 5: Building Your Document

1. **Open your template file** in VSCode
2. **Save the file** (Ctrl+S / Cmd+S) - auto-build will trigger
3. **View PDF**: Click the PDF icon in the top-right or use Ctrl+Alt+V
4. **Manual build**: Use Command Palette → "LaTeX Workshop: Build LaTeX project"

## 📁 Repository Structure

```
├── thesis_template_english.tex    # English thesis template
├── thesis_template_german.tex     # German thesis template
├── thesis_references.bib          # Bibliography file
├── HTW_Berlin_Logo_farbig.jpg     # University logo (replace with yours)
├── steinlaus.jpg                  # Example figure
├── steinlaus2.jpg                 # Example figure
├── build/                         # Build output directory (auto-generated)
├── .vscode/
│   └── settings.json              # VSCode LaTeX configuration
├── .gitignore                     # Git ignore rules for LaTeX
└── README.md                      # This file
```

## 📚 Template Features

### German Academic Structure
Both templates follow German university conventions:

**Front Matter** (before main content):
- Title page with German university format
- Table of contents
- Acknowledgments
- German abstract (Zusammenfassung) - *required by most German universities*
- English abstract
- List of figures, tables, and listings
- Glossary

**Main Matter**:
- Introduction
- Main chapters (methodology, implementation, results, etc.)
- Conclusion

**Back Matter**:
- Bibliography
- Appendices

### Technical Features
- **KOMA-Script** document class for German typography standards
- **Bilingual support** (German/English) with proper language switching
- **IEEE bibliography style** for international compatibility
- **Glossary support** with automatic term management
- **Code listings** with syntax highlighting
- **Professional formatting** with proper margins and typography
- **Hyperlinks** with clean appearance
- **Build system** with automatic cleanup

## 🔧 Customization Guide

### 1. Update Document Information
Edit the title page section in your chosen template:
```latex
\title{Your Thesis Title Here}
\author{Your Name}
% Update university, faculty, and supervisor information
```

### 2. Modify Bibliography
Add your references to `thesis_references.bib`:
```bibtex
@article{example2024,
    title={Your Article Title},
    author={Author Name},
    journal={Journal Name},
    year={2024}
}
```

### 3. Add Glossary Terms
Define technical terms in the glossary section:
```latex
\newglossaryentry{yourterm}{
    name=Your Term,
    description={Definition of your term}
}
```

### 4. Configure Code Listings
Adjust programming language and style:
```latex
\lstset{
    language=Python,  % Change to your language
    % Additional styling options
}
```

## 🎯 Best Practices

### Writing Tips
- **Use semantic markup**: `\emph{}` for emphasis, not `\textit{}`
- **Reference everything**: Use `\ref{}`, `\cite{}`, `\gls{}` for cross-references
- **Consistent terminology**: Define terms in glossary and use consistently
- **Version control**: Commit frequently with meaningful messages

### File Organization
- Keep figures in a separate `figures/` directory
- Use descriptive filenames for images and references
- Separate large chapters into individual `.tex` files using `\input{}`

### Build Management
- The `build/` directory contains all output files
- PDF output: `build/thesis_template_[language].pdf`
- Clean builds: Delete `build/` directory if needed

## 🚨 Troubleshooting

### Common Issues

**File path with spaces causing VSCode build failures**:
- **Problem**: VSCode LaTeX Workshop may fail to build files in directories with spaces or special characters
- **Solution**: Either:
  1. **Rename the directory** to remove spaces (e.g., `academic-thesis-template`)
  2. **Use terminal compilation**: `pdflatex -output-directory=./build thesis_template_[language].tex`
  3. **Move to a path without spaces** for VSCode development

**Build fails with missing packages**:
```bash
# Install missing LaTeX packages (TeX Live)
tlmgr install <package-name>
```

**Bibliography not showing**:
- Ensure `biber` or `bibtex` is installed
- Check `.bib` file syntax
- Use the "pdflatex → biber → pdflatex×2" recipe

**Glossary not appearing**:
- Run the build process multiple times
- Check glossary entries syntax
- Ensure `makeglossaries` is available

**VSCode not building automatically**:
- Check if LaTeX Workshop extension is enabled
- Verify workspace settings are loaded
- Try manual build via Command Palette
- **Check file path for spaces** (see above)

## 📄 License and Usage

This template is provided as-is for academic use. Modify and adapt according to your institution's requirements.

## 🤝 Contributing

Improvements and suggestions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Submit a pull request with clear description

## 📞 Support

For template-specific issues, please check:
1. Your institution's thesis guidelines
2. LaTeX documentation for specific packages
3. VSCode LaTeX Workshop documentation

---

**Happy writing! 📝✨**

*Remember: This template provides a solid foundation, but always verify compliance with your specific academic institution's requirements.* 