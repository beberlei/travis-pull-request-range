<?php

echo $_SERVER['TRAVIS_COMMIT_RANGE'] . "\n";
exec('git diff --name-only ' . escapeshellarg($_SERVER['TRAVIS_COMMIT_RANGE']), $output);

echo implode("\n", $output) . "\n";
