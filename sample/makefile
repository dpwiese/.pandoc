# Get variables from .env file
.EXPORT_ALL_VARIABLES:
include .env

# Bibliography and CSL file
BIB_FILE=sample.bib
CSL_FILE=../csl/ieee-with-url.csl

# External directories
PANDOC_OPTIONS=--from markdown

DEFAULTS_ABSPATH=$(realpath $(dir $(DEFAULTS)))/$(notdir $(DEFAULTS))
METADATA_ABSPATH=$(realpath $(dir $(METADATA_FILE)))/$(notdir $(METADATA_FILE))

.PHONY: pdf tex clean
.SILENT: pdf tex clean

pdf: sample.pdf

sample.pdf: sample.md $(DEFAULTS_ABSPATH) $(METADATA_ABSPATH)
	$(PANDOC) $(PANDOC_OPTIONS) --bibliography $(BIB_FILE) --citeproc --csl $(CSL_FILE) --defaults $(DEFAULTS) --resource-path $(RESOURCE_PATH) --metadata-file $(METADATA_FILE) $< -o $@

tex: sample.tex

sample.tex: sample.md $(DEFAULTS_ABSPATH) $(METADATA_ABSPATH)
	$(PANDOC) $(PANDOC_OPTIONS) --bibliography $(BIB_FILE) --citeproc --csl $(CSL_FILE) --defaults $(DEFAULTS) --resource-path $(RESOURCE_PATH) --metadata-file $(METADATA_FILE) $< -o $@

clean:
	- rm -f sample.pdf
