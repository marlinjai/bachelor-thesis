# latexmk configuration for this thesis.
$pdf_mode = 1;                 # pdflatex
$bibtex_use = 2;               # run biber, clean .bbl
$out_dir = 'build';
$aux_dir = 'build';
$pdf_previewer = 'xdg-open';
$clean_ext = 'acn acr alg glg glo gls ist bbl run.xml synctex.gz lol';

# Teach latexmk how to build the glossary/acronym files.
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
sub run_makeglossaries {
    my ($base_name, $path) = fileparse($_[0]);
    pushd $path;
    my $return = system "makeglossaries", $base_name;
    popd;
    return $return;
}
