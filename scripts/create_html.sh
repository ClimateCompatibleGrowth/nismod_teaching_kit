#!/bin/bash
mkdir -p _build/assets
for lecture in docs/lecture_*; do
for filename in $lecture/*.md; do
    echo Converting "$filename"

    MD_NAME=$(basename "$filename" .md)
    DIR_NAME=$lecture
    BIBFILE=$DIR_NAME/bibliography.bib
    OUTPUT=_build/$(basename $lecture)
    mkdir -p $OUTPUT/assets

    CSL=https://climatecompatiblegrowth.github.io/style/csl-style.css
    PAN=https://climatecompatiblegrowth.github.io/style/pandoc.css

    MD_TMP=$MD_NAME.tmp.md
    cat $filename > $MD_TMP

    if test -f "$BIBFILE"; then
        # Render citations and write bibliography to HTML
        echo "" >> $MD_TMP
        echo "# Bibliography" >> $MD_TMP
        sed -E -f scripts/bib.sed $BIBFILE > tmp.bib
        pandoc --mathjax --standalone --css $PAN --css $CSL --citeproc $MD_TMP --bibliography tmp.bib -o $OUTPUT/$MD_NAME.html
    else
        pandoc --mathjax --standalone --css $PAN --css $CSL $MD_TMP -o $OUTPUT/$BNAME.html
    fi
    cp -f $DIR_NAME/assets/* $OUTPUT/assets
    rm $MD_TMP
done;
done;
# Clean up
