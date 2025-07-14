#!/bin/bash

echo "installation des dependencies"
npm install

echo "running des tests"
ng test --watch=false  --browsers=ChromeHeadless

if [ $? -ne 0 ]; then
 echo "Tests Failed. Aborting build."
 exit 1
fi

echo "building project"
ng build --configuration=recette

echo "build OK"
