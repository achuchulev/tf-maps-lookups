# Use of Terraform map variables and dynamic lookup into them

### The purpose of this repo is to show how to use variables of type _map_ and how to dynamically reference them with lookup to build Dev and Prod Docker container environments using Terraform Workspaces

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

### Run lab

Run vagrant box with command:

```
vagrant up
```

Above command will run `script/provision.sh` that will install:

- Docker
- Terraform
- Git

### ssh to vagrant box and browse repo files

```
vagrant ssh
sudo su -
cd /vagrant
```

### Initialize terraform

`terraform init`

### Create new Terraform workspace for Dev and Prod

```
terraform workspace new dev
terraform workspace new prod
```

### Build environment

#### Dev

```
terraform workspace select dev
terraform apply # type _dev_ when asked, to specify which environment you are going to deploy
```

#### Prod

```
terraform workspace select prod
terraform apply # type _prod_ when asked, to specify which environment you are going to deploy
```

### Destroy environment

#### Dev

```
terraform workspace select dev
terraform destroy # type _dev_ when asked, to specify which environment you are going to destroy
```

#### Prod

```
terraform workspace select prod
terraform destroy # type _prod_ when asked, to specify which environment you are going to destroy
```
 
## How to test 

In order to test that either Dev or Prod is working fine open below link in new browser tab.

[*To test Dev*](http://192.168.0.10:8080)

[*To test Prod*](http://192.168.0.10:80)
