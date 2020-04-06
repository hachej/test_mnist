
############## Start a new project #############################################

This repo contains the standard structure of a data projet at Axom.
When you create a new project the following parameters have to be defined: <p>
 - project_name : name of your project <p>
 - repo name : name of the repo with which the git will be initialized <p>
 - s3 bucket : name of the bucket where the data will be pulled / pushed <p>
 - aws_profile : the AWS CLI profile to use<p>
<p>

Install cookiecutter

``` bash
$ pip install cookiecutter
$ cookiecutter https://axomtech@bitbucket.org/axomdev/dataproject.git
```
