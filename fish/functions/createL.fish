function createL
echo "Copying external file(s)..."
cp ~/Documents/LaTeX/latex-listings-powershell.tex .
echo "Done"
echo "Copying $USER's LaTeX preset..."
cp /home/juuls/Documents/LaTeX/default.tex ./$argv.tex
echo "Done"
echo "Name the default file '$argv'"
ls
end
