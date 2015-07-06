INPUT_MD=001-User-manual
OUTPUT_NAME=std-user-manual

pandoc -f markdown -t html -o ${OUTPUT_NAME}.html ${INPUT_MD}.md --toc --number-sections -H buttondown.css --section-divs


INPUT_MD=100-Developer-manual
OUTPUT_NAME=dev-manual

pandoc -f markdown -t html -o ${OUTPUT_NAME}.html ${INPUT_MD}.md --toc --number-sections -H buttondown.css --section-divs
