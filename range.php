<?php

$return = shell_exec('git diff --name-only ' . escapeshellarg($_SERVER['TRAVIS_COMMIT_RANGE']));

echo $return . "\n";
