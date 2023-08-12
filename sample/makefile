# Get variables from .env file
.EXPORT_ALL_VARIABLES:
include .env

# External directories
PANDOC_OPTIONS=--from markdown
RM=/bin/rm -f

DEFAULTS_ABSPATH=$(realpath $(dir $(DEFAULTS)))/$(notdir $(DEFAULTS))
METADATA_ABSPATH=$(realpath $(dir $(METADATA_FILE)))/$(notdir $(METADATA_FILE))

.PHONY: pdf clean
.SILENT: pdf clean

pdf: sample.pdf

sample.pdf: sample.md $(DEFAULTS_ABSPATH) $(METADATA_ABSPATH)
	@$(PANDOC) $(PANDOC_OPTIONS) --defaults $(DEFAULTS) --resource-path $(RESOURCE_PATH) --metadata-file $(METADATA_FILE) $< -o $@

clean:
	- $(RM) sample.pdf
