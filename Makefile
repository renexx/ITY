PROJ=proj1
PACK=xbolfr00-fit

.PHONY: clean pack

$(PROJ).pdf: $(PROJ).ps
	ps2pdf $(PROJ).ps

$(PROJ).dvi: $(PROJ).tex
	latex $(PROJ).tex
	latex $(PROJ).tex

$(PROJ).ps: $(PROJ).dvi
	dvips $(PROJ).dvi


pack:
	zip $(PACK).zip Makefile $(PROJ).tex
clean:
	rm $(PROJ).aux $(PROJ).dvi $(PROJ).log
