# Convert all *.HEIC files to *.jpeg files using
# > magic convert input.HEIC output.jpeg

for file in *.HEIC; do
  convert $file $(basename $file .HEIC).jpeg
done
