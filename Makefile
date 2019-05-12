PACKAGE_NAME = eqexpl
CTAN_PACKAGE_FILES = README.md README.ru.md eqexpl.pdf eqexpl.sty eqexpl.tex

pdf:
	pdflatex eqexpl.tex

clean:
	rm $(PACKAGE_NAME).pdf
	rm $(PACKAGE_NAME)/*; rmdir $(PACKAGE_NAME)
	rm $(PACKAGE_NAME).tar.gz

ctan: pdf
	mkdir $(PACKAGE_NAME)
	for FILE in $(CTAN_PACKAGE_FILES); do cp $$FILE $(PACKAGE_NAME)/; done
	tar czf $(PACKAGE_NAME).tar.gz $(PACKAGE_NAME)/*
	rm $(PACKAGE_NAME)/*; rmdir $(PACKAGE_NAME)
