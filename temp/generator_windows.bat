@echo off

echo Generating folder structure...

set folders=01_documentation 02_configuration 03_modules 04_external 05_tests 06_tools 07_runtime_implementation .environment

for %%f in (%folders%) do (
    if not exist "%%f" (
        mkdir "%%f"
        echo Created: %%f
    ) else (
        echo Directory "%%f" already exists, skipping...
    )
)

echo Done.
pause
