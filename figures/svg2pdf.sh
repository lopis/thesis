#inkscape -z -D --file=tickExample.svg --export-pdf=tickExample.pdf

cd svg/
find . -name '*.svg' |
while read filename
do
    a="${filename%.svg}.pdf"
    b="${a##*/}"
    echo $b
    rm ../${b}
    inkscape -z -D --file="$filename" --export-pdf="../${b}"
done
