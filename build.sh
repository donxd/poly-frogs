#!/bin/bash
rm -rf bower_components/run/
mkdir -p bower_components/run/
# cp -r images/ bower_components/run/
cp frok-box.html bower_components/run/
rm -rf build/
polymer build --entrypoint index-deploy.html
cp -r images/ build/default/bower_components/run/
# polymer build
mv build/default/index-deploy.html build/default/index.html
mv bower_components bower_components.bak
git checkout gh-pages
rm -rf bower_components/
rm index.html
# mv build/default/bower_components/ .
# mv build/default/index.html index.html
mv build/default/* ./
rm -rf build/
echo "done"