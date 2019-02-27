
IMAGE := pdf-build-image
SOURCE := source.md
MOUNT := /workspace

.PHONY: all clean helper

all: helper

helper: container $(SOURCE)
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) $(IMAGE) make --directory=$(MOUNT) --file=$(MOUNT)/Makefile out.pdf

container: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

out.pdf: $(SOURCE)
	pandoc $(SOURCE) -o out.pdf

clean:
	rm -f *.pdf
