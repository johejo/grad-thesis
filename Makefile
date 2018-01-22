LATEX = uplatex
DVIPDF = dvipdfmx

THESIS = grad-thesis
PROLOGUE = prologue

CLASS = gradthesis_utf8.cls
SOURCE = $(THESIS).tex
PDF = $(THESIS).pdf
DVI = $(THESIS).dvi

P_SOURCE = $(PROLOGUE).tex
P_PDF = $(PROLOGUE).pdf
P_DVI = $(PROLOGUE).dvi

.PHONY: all
all: $(PDF) $(P_PDF)

$(DVI): $(SOURCE) $(CLASS)
	$(LATEX) $(SOURCE)

$(PDF): $(DVI)
	$(DVIPDF) $<

$(P_DVI): $(P_SOURCE)
	$(LATEX) $<

$(P_PDF): $(P_DVI)
	$(DVIPDF) $<

.PHONY: clean
clean:
	$(RM) $(PDF) $(P_PDF) *.aux *.log *.dvi *.toc
