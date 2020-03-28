TARGETS = 8086.pdf aarch32.pdf aarch64.pdf crisv10.pdf crisv32.pdf mips32r2.pdf pic-baseline.pdf pic-midrange.pdf pic-highend.pdf

all: $(TARGETS)

$(TARGETS): sheet.cls

# Build twice to make sure the footers get correct positions
%.pdf: %.tex
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<

clean:
	rm -f *.pdf *.log *.aux
