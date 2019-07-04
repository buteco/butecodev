PROJECT_FOLDER=butecodev/

clean:
	cd $(PROJECT_FOLDER) && pipenv run lektor clean --yes
	@rm -rf $(PROJECT_FOLDER)build/

build: clean
	cd $(PROJECT_FOLDER) && pipenv run lektor build -v -O build -f minify

serve:
	cd $(PROJECT_FOLDER) && pipenv run lektor serve -v
