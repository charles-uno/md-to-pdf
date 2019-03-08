
IMAGE := pandoc-image
SOURCE := source.md
MOUNT := /workspace

.PHONY: all clean helper

all: helper

helper: container $(SOURCE)
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) make out.pdf

container: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache

out.pdf: $(SOURCE)
	pandoc $(SOURCE) -o out.pdf --verbose --variable urlcolor=red

clean:
	rm -f *.pdf
