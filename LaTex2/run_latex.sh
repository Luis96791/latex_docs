echo "$(tput setaf 5) Compilando con pdflatex: $1.tex"
echo "$(tput setaf 2)"
pdflatex $1.tex

# Esto es necesario solo para compilar la bibligrafía 
echo "$(tput setaf 5) Compilando con bibtex: $1.aux"
echo "$(tput setaf 2)"
bibtex $1.aux

echo "$(tput setaf 5) Compilando con pdflatex: $1.tex"
echo "$(tput setaf 2)"
pdflatex $1.tex

echo "$(tput setaf 5) Compilando con pdflatex: $1.tex"
echo "$(tput setaf 2)"
pdflatex $1.tex

# Eliminar archivos de compilación
rm *.aux
rm *.bbl
rm *.blg
rm *.log
