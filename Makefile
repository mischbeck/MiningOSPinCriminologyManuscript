QUARTO ?= quarto
PROFILE ?= default
PROFILE_FLAG := $(if $(PROFILE),--profile $(PROFILE),)

# Allow overriding the list of docx outputs via env var `docx`.
# Example: `make docx docx="index Supplements"` or `make docx docx=index`.
DOCX ?= index Supplements
DOCX := $(if $(docx),$(docx),$(DOCX))
DOCX_DOCS := $(addsuffix .docx,$(DOCX))

.PHONY: all pdf docx clean

# Build both formats for both documents
all: pdf docx

# Aggregate targets
pdf: index.pdf Supplements.pdf
docx: $(DOCX_DOCS)
docx-main: index.docx

export QUARTO_R := /opt/R/4.5.2/bin/R

# Pattern rules for either format
%.pdf: %.qmd
	OUTPUT_FORMAT=pdf/tex $(QUARTO) render $< --to pdf $(PROFILE_FLAG)

%.docx: %.qmd
	OUTPUT_FORMAT=docx $(QUARTO) render $< --to docx $(PROFILE_FLAG)

clean:
	rm -f index.pdf Supplements.pdf index.docx Supplements.docx
