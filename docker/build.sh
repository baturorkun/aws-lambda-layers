#!/bin/sh
set -exa

SUFFIX=$(date +"%Y-%d-%d-%H-%M")
OUTDIR="build_"${SUFFIX}""

mkdir $OUTDIR
pip3 install -r requirements.txt -t $OUTDIR/python/lib/python3.8/site-packages/

cd $OUTDIR

zip -r packages-${SUFFIX}.zip .

if [[ ! -z $S3_BUCKET ]]; then
  aws s3 cp packages-${SUFFIX}.zip  s3://${S3_BUCKET}/
fi