PROJECT_FOLDER=butecodev/

clean:
	cd $(PROJECT_FOLDER) && lektor clean --yes
	@rm -rf $(PROJECT_FOLDER)build/

build: clean
	cd $(PROJECT_FOLDER) && lektor build -v -O build -f minify

serve:
	cd $(PROJECT_FOLDER) && lektor serve -v

pip-compile:
	pip-compile \
		--resolver=backtracking --allow-unsafe --no-header --generate-hashes --upgrade \
		requirements/requirements.in \
		--output-file requirements.txt

pip-compile-dev:
	pip-compile \
		--resolver=backtracking --allow-unsafe --no-header --generate-hashes --upgrade \
		requirements/dev-requirements.in \
		--output-file dev-requirements.txt

compile: pip-compile pip-compile-dev

install:
	pip-sync requirements.txt

install-dev:
	pip-sync requirements.txt dev-requirements.txt
