############################
# Usage
# make         # converts all src/*.md files to publish/*.pdf files using pandoc
# make clean   # cleans up publish/*.pdf artifacts
############################

all:

############################
# Common
############################

PANDOC = pandoc

PUBLISH_DIR = publish
SRC_DIR = src
COMMON_DIR = common

############################
# Targets
############################

SRC  = $(wildcard $(SRC_DIR)/*.md)
PDF  = $(SRC:.md=.pdf)

PDF_PUBLISH = $(PDF:$(SRC_DIR)/%=$(PUBLISH_DIR)/%)

SVG = $(wildcard *.svg) $(wildcard **/*.svg)
SVG_PDF = $(SVG:.svg=.pdf)

DOT = $(wildcard *.dot) $(wildcard **/*.dot)
DOT_PDF = $(DOT:.dot=.pdf)

############################
# Goals
############################

.PHONY: all clean pdf
.DEFAULT_GOAL := all

all: pdf

publish: $(PDF_PUBLISH)
pdf:  $(PDF)

clean: 
	@echo "Cleaning up..."
	rm -rvf $(PDF) $(SVG_PDF) $(DOT_PDF)

############################
# Publish patterns
############################

$(PDF_PUBLISH): $(PUBLISH_DIR)/%.pdf: $(SRC_DIR)/%.pdf
	@mkdir -p $(@D)
	cp $< $@

############################
# Pandoc patterns
############################

PANDOC_ARGS :=

$(PDF): %.pdf: %.md
	$(PANDOC) $(PANDOC_ARGS) -t beamer --pdf-engine lualatex $< -o $@
	
############################
# Image patterns
############################

$(SVG_PDF): %.pdf: %.svg
	inkscape -D $< -o $@


$(DOT_PDF): %.pdf: %.dot
	dot -Tpdf $< -o $@

############################
# Custom patterns
############################

$(PDF): $(COMMON_DIR)/pres.yaml $(COMMON_DIR)/pres-preamble.tex $(COMMON_DIR)/pres-template.tex $(DOT_PDF) $(SVG_PDF)
$(PDF): PANDOC_ARGS = $(COMMON_DIR)/pres.yaml -H $(COMMON_DIR)/pres-preamble.tex --listings --template $(COMMON_DIR)/pres-template.tex --slide-level=1

