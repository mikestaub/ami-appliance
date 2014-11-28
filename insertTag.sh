#!/bin/bash

if [ -z "$1" ]
then
  echo "Requires a tag number"
fi


sed s/\$VERSION/$1/g ansible/arangodb.yml.par > ansible/arangodb.yml
sed s/\$VERSION/$1/g template.json.par > template.json
