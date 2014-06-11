#inkscape -z -D --file=tickExample.svg --export-pdf=tickExample.pdf

find . -name '*.svg' |
while read filename
do
    echo "${filename%.svg}.pdf"    # ... or any other command using $filename
    inkscape -z -D --file="$filename" --export-pdf="${filename%.svg}.pdf"
done
