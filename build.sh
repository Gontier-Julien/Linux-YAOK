#!/usr/bin/env bash
files=$(find . -name "PKGBUILD")

for f in $files
do
  d=$(dirname $f)
  cd $d

  docker run --name dockerbuild -e EXPORT_PKG=1 -v $PWD:/pkg snowy68/makepkg
  docker rm dockerbuild
  cd ..
done

mv */*.tar.zst* /home/runner/work/Linux-YAOK/Linux-YAOK/