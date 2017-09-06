# Run this script to convert all Markdown files to HTML5, overwriting existing files

FILES=*.md

for f in $FILES
do
  filename="${f%.*}"
  echo "Converting $f to $filename.html"
  `pandoc "$f" -f markdown -t html5 -c style.css -o "$filename.html"`
done