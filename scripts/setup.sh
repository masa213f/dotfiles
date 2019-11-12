#!/bin/bash

src_dir=$(cd $(dirname $0)/.. && pwd)
dst_dir=$(cd && pwd)

exec () {
    echo "$@"
    eval "$@"
}

for f in $(find ${src_dir} -maxdepth 1 -name "_*" -not -name "_*.example"); do
  filename=$(basename $f)
  src_file=${src_dir}/${filename}
  dst_file=${dst_dir}/${filename/_/.}
  exec ln -sf ${src_file} ${dst_file}
done
