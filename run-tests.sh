#!/bin/bash
set -v

php vendor/bin/fiddler git-changed? $PACKAGE $TRAVIS_COMMIT_RANGE
if [ $? -eq 0 ]; then
    echo "$PACKAGE requires testing";
else
    echo "No changes for $PACKAGE";
fi
