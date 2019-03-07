
IMAGE := pdf-build-image
SOURCE := source.md
MOUNT := /workspace

DOCKERFILE := Dockerfile.ubuntu

.PHONY: all clean helper refresh

all: helper

helper: container $(SOURCE)
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) make out.pdf

container: $(DOCKERFILE)
	docker build . -f $(DOCKERFILE) -t $(IMAGE)

refresh: $(DOCKERFILE)
	docker build . -f $(DOCKERFILE) -t $(IMAGE) --no-cache

out.pdf: $(SOURCE)
	pandoc $(SOURCE) -o out.pdf --verbose --variable urlcolor=red

clean:
	rm -f *.pdf

debug:
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) make debug-helper

debug-helper:
	pandoc test.md -o out.pdf --verbose

#	cat ~/.pandoc/templates/default.latex
