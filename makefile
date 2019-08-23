clean:
	rm -rf build
	rm -f deepnovo_cython_modules.c
	rm -f deepnovo_cython_modules*.so

.PHONY: build
build: clean
	python3 deepnovo_cython_setup.py build_ext --inplace

.PHONY: train
train:
	python3 main.py --train

.PHONY: valid
valid:
	python3 main.py --valid

.PHONY: denovo
denovo:
	python3 main.py --search_denovo

.PHONY: test
test:
	python3 main.py --test
