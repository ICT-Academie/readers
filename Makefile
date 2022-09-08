validate_reader:
	if [[ ! -f "$(reader).md" ]]; then echo "Error: Unknown reader."; exit 1; fi
	if [[ "$(reader)" == "README" ]]; then echo "Nice try."; exit 1; fi

build: validate_reader
	pandoc $(reader).md -s -o dist/$(reader).pdf  --pdf-engine=xelatex

buildopen: build
	open dist/$(reader).pdf
