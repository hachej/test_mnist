This repo contains the standard structure of a data projet at Axom.
When you create a new project the following parameters have to be defined:  
 - project_name : name of your project  
 - repo name : name of the repo with which the git will be initialized   
 - s3 bucket : name of the bucket where the data will be pulled / pushed   
 - aws_profile : the AWS CLI profile to use  



### Install cookiecutter

```bash
$ pip install cookiecutter
$ cookiecutter https://axomtech@bitbucket.org/axomdev/dataproj-starter-py.git
```

### Setup Sphinx

```bash
$ make create_environment
$ workon yourenv
$ pip3 install -r requirements.txt
```
