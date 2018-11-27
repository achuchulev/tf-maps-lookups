# A sample repo with example of terraform maps and lookups usage

## The purpose of this repo is to show how to use variables of type _map_ within terraform configuration to build Dev and Prod environments having different docker container setup

#### Prerequisites

* Vagrant
* Git
* VirtualBox

### How to build

#### Get the repo

```
git clone https://github.com/achuchulev/tf-maps-lookups.git
cd tf-maps-lookups
```

#### Start lab

Run vagrant box with command:

```
vagrant up
```

It will:

- Download a Virtualbox image from Vagrant cloud
- Run the vagrant box on virtualbox locally
- Install docker community edition
- Install terraform


### How to use

#### SSH to vagrant box and browse repo files

```
vagrant ssh
sudo su -
cd /vagrant
```

#### Initialize terraform

`terraform init`

#### Specify which environment to deploy

In order to specify which environment you want terraform to deploy/manage/destroy export _env_ variable with command:

- for Dev, run command `export TF_VAR_env=dev`
- for Prod, run command `export TF_VAR_env=prod`
- to unset currently exported Env Var, run command `unset TF_VAR_env`

P.S.
You can also specify which environment to work with interactively through console instead of using environment variables

Once you have specified the environment run:

```
terraform plan
terraform apply
```

To destroy your environment run

```
terraform destroy
```
 
