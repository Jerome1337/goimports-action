#!/bin/sh -l

cd $GITHUB_WORKSPACE

exec 5>&1
GOIMPORTS_OUTPUT="$(goimports -l -w "$1" | tee /dev/fd/5)"

if [ -n "$GOIMPORTS_OUTPUT" ]; then
  echo "All following has imports not properly ordered"
  echo "${GOIMPORTS_OUTPUT}"

  exit 1
fi

echo "::set-output name=goimports-output::Goimports step succeed"
