#!/bin/sh

git clone -b gh-pages --single-branch git@github.com:lgersman/enterjs2015-polymer_es6.git tmp && cd tmp
rm -r *.* && rm -r *
cp -rv ../dist/* .
git add --all .
git commit -am "gh-pages updated"
git push origin gh-pages
cd .. && rm -rf tmp
