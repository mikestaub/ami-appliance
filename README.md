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

## Virtual Box

Download packer as described above.
To build the VirtualBox images you need to export two variables:

```
export UBUNTU_IMAGES="http://releases.ubuntu.com/14.04/"
export PRESEED_HOST="http://localhost"
```

The `preseed.cfg`file has to be shipped from a locally installed webserver and ubuntu will be downloaded from ubuntu.com
Alternatively you can download the images and export the folder containing them on your filesystem and let the `preseed.cfg` be shipped by any other webserver.
Replace the exports above accordingly.
Afterwards you can execute packer.

32bit version:
```
$ packer build virtualBox32.json
```

64bit version:
```
$ packer build virtualBox64.json
```
