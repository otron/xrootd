#!/bin/bash
./genversion.sh --print-only | sed "s/v//" > bindings/python/VERSION_INFO
cd bindings/python
cp setup_pypi.py setup.py
python setup.py sdist
twine upload dist/*
rm setup.py dist/*

