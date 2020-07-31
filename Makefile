.PHONY: create_environment create_kernel cryptInit cryptAddUsers cryptListUsers

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = dataprod-starter-py
PYTHON_INTERPRETER = python3

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Set up python interpreter environment
create_environment:
	@echo CREATE ENVIRONMENT
	$(PYTHON_INTERPRETER) -m pip install -q virtualenv virtualenvwrapper
	@echo ">>> Installing virtualenvwrapper if not already installed.\nMake sure the following lines are in shell startup file\n\
	export WORKON_HOME=$$HOME/.virtualenvs\nexport PROJECT_HOME=$$HOME/Devel\nsource /usr/local/bin/virtualenvwrapper.sh\n"
	@bash -c "source `which virtualenvwrapper.sh`;mkvirtualenv $(PROJECT_NAME) --python=$(PYTHON_INTERPRETER)"
	@echo ">>> New virtualenv created. Activate with:\nworkon $(PROJECT_NAME)"

#setup kernel
create_kernel:
	$(PYTHON_INTERPRETER) -m pip install -q ipykernel
	$(PYTHON_INTERPRETER) -m ipykernel install --user --name $(PROJECT_NAME)
	@echo "Kernel is set up"

#setup git-crypt

path = $(shell aws s3api list-objects --bucket "axom-public-gpg-keys"  --query "Contents[].{Key: Key}" --output text)

cryptInit:
    $(git-crypt init)

cryptAddUsers:
	for user in $(path);\
	do\
		echo ===== AJOUT USER $$user =====; \
		git-crypt add-gpg-user $$user;\
    done

cryptListUsers:
	@echo TEST USER IN GIT-CRYPT;
	@echo $(for key in .git-crypt/keys/default/0/* ; do gpg -k $(echo $(basename $key) | sed -e 's/.gpg//') ; done ;)
