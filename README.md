################################################################################
############## Start a new project #############################################
################################################################################

This repo contains the standard structure of a data projet at Axom.
When you create a new project the following parameters have to be defined:"
 - project_name : name of your project
 - repo name: name of the repo with which the git will be initialized
 - s3 bucket: name of the bucket where the data will be pulled / pushed
 - aws_profile: the AWS CLI profile to use

``` bash
install cookiecutter
$ pip install cookiecutter
$ cookiecutter https://axomtech@bitbucket.org/axomdev/dataproject.git
```
