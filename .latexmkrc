# .latexmkrc - Configuration for latexmk to handle glossaries automatically
# This file ensures that glossaries are compiled automatically when needed

# Set output directory
$out_dir = './build';

# Enable shell escape for advanced features
$pdflatex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Add glossary file extensions to the list of files to clean
$clean_ext = 'acn acr alg glo gls glg ist fls fdb_latexmk';

# Custom dependency for glossaries (main glossary)
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');

# Custom dependency for acronyms
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
    my $dir = dirname($_[0]);
    my $base = basename($_[0], '.glo', '.acn');
    
    if ($dir) {
        system("makeglossaries", "-d", $dir, $base);
    } else {
        system("makeglossaries", $base);
    }
    return $?;
}