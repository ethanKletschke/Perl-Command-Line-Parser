# Perl Command Line Parser v1.0

A test script written in [Perl](https://en.wikipedia.org/wiki/Perl "Source: Wikipedia.org") to parse
command line arguments and output different things depending on the option entered.

Made by Ethan Kletschke.

## Table of Contents

- [Perl Command Line Parser v1.0](#perl-command-line-parser-v10)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Options](#options)
  - [Planned options](#planned-options)
  - [Changelog](#changelog)
    - [1.0](#10)

## Description

The **_Perl Command Line Parser_** is a [CLI](https://en.wikipedia.org/wiki/Command-line_interface "Source: Wikipedia.org") app (currently just a test script) that 
parses command line arguments passed to the program.

## Options

The table below lists the currently-implemented valid command-line arguments:

| **Option** |                                            **Description**                                           |
|:----------:|:----------------------------------------------------------------------------------------------------:|
|    `-v`    |                                     Displays version information.                                    |
|    `-h`    |          Help menu. Also displays on incorrect CLI input (see [here](#incorrect-cli-input)).         |
|   `-Dall`  | Short for `Display all`. Turns on "verbosity mode", which displays both debug messages and warnings. |
|   `-Dbug`  |                        Short for `Display debug`. Turns on debugging messages.                       |
|  `-Dwarn`  |                       Short for `Display warnings`. Turns on warning messages.                       |

(Table generated with [TablesGenerator.com](https://www.tablesgenerator.com/markdown_tables# "Table generator site"))

## Planned options

The table below lists the planned options that could be implemented in later versions of this "app":

|       **Option**      |                               **Description**                               | **Planned Version\*** |
|:---------------------:|:---------------------------------------------------------------------------:|:-------------------:|
|      `--version`      |                                Alias of `-v`.                               |         1.1         |
|        `--help`       |                                Alias of `-h`.                               |         1.1         |
|     `-m "Literal"`    | Displays the string `"Literal"` that comes immediately after the `-m` flag. |         1.2         |
| `--message "Literal"` |                                Alias of `-m`.                               |         1.2         |
|          `-l`         |                          Log the output to a file.                          |         1.2         |
|        `--log`        |                                Alias of `-l`                                |         1.2         |
|          `-s`         |                          Save output to a file(?).                          |        _???_        |
|        `--save`       |                                Alias of `-s`.                               |        _???_        |

\* - Not 100% accurate.

(Table generated with [TablesGenerator.com](https://www.tablesgenerator.com/markdown_tables# "Table generator site"))

## Changelog

### 1.0

Program is initially released onto [Github](https://github.com/ethanKletschke/Perl-Command-Line-Parser).
