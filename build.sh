 #!/usr/bin/env bash
files=$(find . -name "PKGBUILD")

for f in $files
do
  d=$(dirname $f)
  cd $d

  #always remove old docker build
  docker rm $(docker ps -aq)
  docker run --name dockerbuild -e EXPORT_PKG=1 -v $PWD:/pkg snowy68/makepkg
done
