# tablbl

tablbl is a Stata command that tabulates variables, showing both values and user-defined value labels.

## Installation
Type the following command:

    net install tablbl, from(https://raw.githubusercontent.com/tgoldring/tablbl/master)

Alternatively, you can [download the package from GitHub](https://github.com/tgoldring/tablbl) and install it manually.

## Example - No-Fault Divorce Laws

    sysuse auto2

    tablbl rep78 foreign

    tablbl rep78 foreign, mask("[#] ")

For additional help, type

    help tablbl
