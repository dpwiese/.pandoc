# Get variables from .env file
.EXPORT_ALL_VARIABLES:
include .env

# External directories
PANDOC_OPTIONS=--from markdown
RM=/bin/rm -f

.PHONY: pdf clean
.SILENT: pdf clean

pdf: sample.pdf

sample.pdf: sample.md
	@$(PANDOC) $(PANDOC_OPTIONS) --defaults $(DEFAULTS) --resource-path $(RESOURCE_PATH) --metadata-file $(METADATA_FILE) $< -o $@

clean:
	- $(RM) sample.pdf
