install: dist
	pip install --upgrade dist/tsp-1.0-py2-none-any.whl
	tsp reload

dist:
	rm -rf dist
	python setup.py sdist bdist_wheel
	rm -rf tsp.egg-info build
	ls -ldh dist/tsp-*

release: release-pypi

release-pypi: dist
	echo twine upload dist/tsp-*

.PHONY: dist
