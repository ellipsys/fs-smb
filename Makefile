# Makefile to test and clean.

all:
	@echo "Targets:  test, clean"

install:
	python setup.py install

uninstall:
	-pip uninstall smbfs
	-pip uninstall pysmb
	-pip uninstall fs

test:
	python -m unittest smbfs.tests

clean:
	find . \( -name "*~" -o -name "*.pyc" \) -delete
	rm -rf build dist smbfs.egg-info
