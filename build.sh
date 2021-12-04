 #!/usr/bin/env bash
files=$(find . -name "PKGBUILD")

for f in $files
do
  d=$(dirname $f)
  cd $d

  docker run --name dockerbuild -e EXPORT_PKG=1 -v $PWD:/pkg whynothugo/makepkg
done