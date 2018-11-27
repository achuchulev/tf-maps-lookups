# Use of Terraform map variables and dynamic lookup into them

### The purpose of this repo is to show how to use variables of type map and how to dynamically reference them with lookup to build separate Dev and Prod Docker environments using Terraform Workspaces

### Prerequisites

* Vagrant
* Git
* VirtualBox

### Get the repo and run lab

```
git clone https://github.com/achuchulev/tf-maps-lookups.git
cd tf-maps-lookups
vagrant up
```

Vagrant up will run `scripts/provision.sh` that will install:

- Docker
- Terraform


## How to build

### ssh to vagrant box and go to repo folder

```
vagrant ssh
sudo su -
cd /vagrant
```

### Initialize terraform

`terraform init`

### Create new Terraform workspaces for Dev and Prod

```
terraform workspace new dev
terraform workspace new prod
```

### Build 

#### Dev

```
terraform workspace select dev
terraform apply
```

typing _dev_ when asked, to specify which environment you are going to deploy

#### Prod

```
terraform workspace select prod
terraform apply
```
typing _prod_ when asked, to specify which environment you are going to deploy

## How to test 

In order to test that either Dev or Prod is working fine open the links below in new browser tab.

[*To test Dev*](http://192.168.0.10:8080)

[*To test Prod*](http://192.168.0.10:80)



## How to destroy

### Dev

```
terraform workspace select dev
terraform destroy
```

typing _dev_ when asked, to specify which environment you are going to destroy

### Prod

```
terraform workspace select prod
terraform destroy
```

typing _prod_ when asked, to specify which environment you are going to destroy

### Lab

Leave vagrant box ssh, and run

```
cd tf-maps-lookups
vagrant destroy
``` 

confirming `yes` once prompted
