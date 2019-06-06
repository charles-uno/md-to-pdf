
IMAGE := pandoc-image
MOUNT := /workspace

.PHONY: all clean image

all: $(patsubst %.md, %.pdf, $(wildcard *.md))

%.pdf : %.md
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE) pandoc $< -o $@ --verbose --variable urlcolor=red

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache

clean:
	rm -f *.pdf
