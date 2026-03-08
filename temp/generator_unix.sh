#!/bin/bash

folders=(
    01_documentation
    02_configuration
    03_modules
    04_external
    05_tests
    06_tools
    07_runtime_implementation
    .environment
)

echo "Generating folder structure..."

for folder in "${folders[@]}"; do
    if [ ! -d "$folder" ]; then
        mkdir -p "$folder"
        echo "Created: $folder"
    else
        echo "Directory '$folder' already exists, skipping..."
    fi
done
