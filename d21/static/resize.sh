for f in *png ; do convert $f -resize 10% ${f%.png}_resized.png ; done
