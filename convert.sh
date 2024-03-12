while getopts "d:" flag; do 
    case "${flag}" in
        d) directory="${OPTARG}" ;;
    esac
done
for fileName in $(find "./lectures/$directory" -type f -name "*.HEIC"); do
    newFileName="${fileName%.HEIC}.png"
    magick convert "${fileName}" "${newFileName}"
    echo "✨ Converted ${fileName} to ${newFileName}"
done
