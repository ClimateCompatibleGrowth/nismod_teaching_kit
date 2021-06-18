#!/bin/bash
echo $1
for filename in docs/lecture*/*.md; do
    echo Converting "$filename"

    MD_NAME=$(basename "$filename" .md)
    DIR_NAME=$(dirname "$filename")
    BIBFILE=$DIR_NAME/bibliography.bib
    OUTPUT=_build

    CSL=https://climatecompatiblegrowth.github.io/style/csl-style.css
    PAN=https://climatecompatiblegrowth.github.io/style/pandoc.css

    MD_TMP=$MD_NAME.tmp.md
    cat $filename > $MD_TMP

    if test -f "$BIBFILE"; then
        # Render citations and write bibliography to HTML
        echo "" >> $MD_TMP
        echo "## Bibliography" >> $MD_TMP
        sed -E -f scripts/bib.sed $BIBFILE > tmp.bib
        pandoc --standalone --css $PAN --css $CSL --citeproc $MD_TMP --bibliography tmp.bib -o $OUTPUT/$MD_NAME.html
    else
        pandoc --standalone --css $PAN --css $CSL $MD_TMP -o $OUTPUT/$BNAME.html
    fi
    cp -f $DIR_NAME/assets/* $OUTPUT/assets
    rm $MD_TMP
done;
# Clean up
