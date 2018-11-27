# Use of terraform map variables and dynamic lookup into them

### The purpose of this repo is to show how to use variables of type _map_ to build Dev and Prod Docker container environments

### Prerequisites

* Vagrant
* Git
* VirtualBox

## How to build

### Get the repo

```
git clone https://github.com/achuchulev/tf-maps-lookups.git
cd tf-maps-lookups
```

### Start lab

Run vagrant box with command:

```
vagrant up
```

Above command will run `script/provision.sh` that will install:

- Docker
- Terraform
- Git

### SSH to vagrant box and browse repo files

```
vagrant ssh
sudo su -
cd /vagrant
```

### Initialize terraform

`terraform init`

### Specify which environment to work with

In order to specify which environment you want terraform to deploy/manage/destroy export _env_ variable with command:

- for Dev, run command `export TF_VAR_env=dev`
- for Prod, run command `export TF_VAR_env=prod`
- to unset currently exported Env Var, run command `unset TF_VAR_env`

P.S.
You can also specify which environment to work with interactively through console instead of using environment variables

### Build environment

Once you have specified which environment you are going to work with, run:

```
terraform plan
terraform apply
```

### Destroy environment

```
terraform destroy
```
 
## How to test 

In order to test that either Dev or Prod is working fine open below link in new browser tab.

[*To test Dev*](http://192.168.0.10:8080)

[*To test Prod*](http://192.168.0.10:80)
