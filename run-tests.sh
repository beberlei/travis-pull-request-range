#!/bin/bash
set -v

composer monorepo:git-changed? $PACKAGE $TRAVIS_COMMIT_RANGE -v
if [ $? -eq 0 ]; then
    echo "$PACKAGE requires testing";
else
    echo "No changes for $PACKAGE";
fi
