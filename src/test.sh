#!/bin/bash

echo "Running Tests..."

output=$(node -e "const greet = require('./src/app'); console.log(greet('Mohamed'));")

expected="Hello Mohamed!"

if [ "$output" = "$expected" ]; then
    echo "✅ Test Passed"
    exit 0
else
    echo "❌ Test Failed"
    echo "Expected: $expected"
    echo "Actual: $output"
    exit 1
fi