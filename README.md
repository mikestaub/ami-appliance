# Deployment & VM / AMI Descriptions

Use this repository to build Vagrant boxes and AMI images for EC2
featuring a ready to run ArangoDB or ArangoDB cluster.

## Vagrant

If you want to give ArangoDB a try, just use the extisting
`Vagrantfile` to fire up a ArangoDB cluster using
[Vagrant](https://www.vagrantup.com):

```shell
$ vagrant up
```

will start 4 ArangoDB servers available on a private network.

## Packer

Using [Packer](http://packer.io) you can provision your own ArangoDB
images for test setups or your very own AWS setup, with ready to run
AMIs, you'll just have to boot up:

Simply export your AWS credentials & run packer:

```
$ export AWS_ACCESS_KEY_ID=secret
$ export AWS_SECRET_ACCESS_KEY=likewise
$ packer build template.json
```
