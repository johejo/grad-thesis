LATEX = uplatex
DVIPDF = dvipdfmx

THESIS = grad-thesis
PROLOGUE = prologue

CLASS = gradthesis_utf8.cls
SOURCE = $(THESIS).tex
OUTPUT = $(THESIS).pdf
DVI = $(THESIS).dvi

P_SOURCE = $(PROLOGUE).tex
P_PDF = $(PROLOGUE).pdf
P_DVI = $(PROLOGUE).dvi

FIG_DIR = figure
FIGURE = $(wildcard $(PWD)/$(FIG_DIR)/*.pdf)

.PHONY: all
all: $(OUTPUT) $(P_PDF)

$(DVI): $(SOURCE) $(CLASS) $(FIGURE)
	$(LATEX) $(SOURCE)

$(OUTPUT): $(DVI)
	$(DVIPDF) $<

$(P_DVI): $(P_SOURCE) $(FIGURE)
	$(LATEX) $<

$(P_PDF): $(P_DVI)
	$(DVIPDF) $<

.PHONY: clean
clean:
	$(RM) $(OUTPUT) $(P_PDF) *.aux *.log *.dvi *.toc
