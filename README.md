# Use of Terraform map variables and dynamic lookup into them

### The purpose of this repo is to show how to use variables of type _map_ and how to dynamically reference them with lookup to build Dev and Prod Docker container environments using Terraform Workspaces

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

Vagrant up will run `script/provision.sh` that will install:

- Docker
- Terraform
- Git

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

### Build Dev

```
terraform workspace select dev
terraform apply # type _dev_ when asked, to specify which environment you are going to deploy
```

### Build Prod

```
terraform workspace select prod
terraform apply # type _prod_ when asked, to specify which environment you are going to deploy
```

## How to test 

In order to test that either Dev or Prod is working fine open the links below in new browser tab.

[*To test Dev*](http://192.168.0.10:8080)

[*To test Prod*](http://192.168.0.10:80)


## How to destroy

### Destroy Dev

```
terraform workspace select dev
terraform destroy # type _dev_ when asked, to specify which environment you are going to destroy
```

### Destroy Prod

```
terraform workspace select prod
terraform destroy # type _prod_ when asked, to specify which environment you are going to destroy
```

### Destroy lab

In order to destroy lab exit vagrant box and from repo root folder run `vagrant destroy` confirming `yes` once prompted
