This repo contains the standard structure of a data projet at Axom.
When you create a new project the following parameters have to be defined: <br />
 - project_name : name of your project <br />
 - repo name : name of the repo with which the git will be initialized <br />
 - s3 bucket : name of the bucket where the data will be pulled / pushed <br />
 - aws_profile : the AWS CLI profile to use<br />



Install cookiecutter

``` bash
$ pip install cookiecutter
$ cookiecutter https://axomtech@bitbucket.org/axomdev/dataproject.git
```
