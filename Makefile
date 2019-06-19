PROJECT_FOLDER=butecodev/

clean:
	cd $(PROJECT_FOLDER) && pipenv run lektor clean

build: webclean
	cd $(PROJECT_FOLDER) && pipenv run lektor build -v -O build -f minify

serve:
	cd $(PROJECT_FOLDER) && pipenv run lektor serve -v
