# Perl Command Line Parser v1.1.0

A test script written in [Perl](https://en.wikipedia.org/wiki/Perl "Source: Wikipedia.org") to parse
command line arguments and output different things depending on the option entered.

This project was made by Ethan Kletschke.

## Details of Project

- Date of Initial Commit: 2025-02-28
- Current Version: `1.1.0`
- Language used: [Perl](https://www.perl.org/about.html "Source: www.perl.org")

## Table of Contents

- [Perl Command Line Parser v1.1.0](#perl-command-line-parser-v110)
  - [Details of Project](#details-of-project)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Options](#options)
  - [Planned options](#planned-options)
  - [Incorrect CLI Input](#incorrect-cli-input)
    - [Single-line Flag Entered with Other Flags](#single-line-flag-entered-with-other-flags)
    - ["Single-line Flag not Entered" Error](#single-line-flag-not-entered-error)
  - [Changelog](#changelog)
    - [**_1.2.0_**](#120)
    - [**_1.1.0_**](#110)
    - [**_1.0_**](#10)

## Description

The **_Perl Command Line Parser_** is a [CLI](https://en.wikipedia.org/wiki/Command-line_interface "Source: Wikipedia.org") app
(just a test script) that parses command line arguments passed to the program. It is only intended to be
a 

## Options

The table below lists the currently-implemented valid command-line arguments:

|    **Option**    |                                           **Description**                                            |
| :--------------: | :--------------------------------------------------------------------------------------------------: |
| `-v`/`--version` |                                    Displays version information.                                     |
|  `-h`/`--help`   |         Help menu. Also displays on incorrect CLI input (see [here](#incorrect-cli-input)).          |
|     `-Dall`      | Short for `Display all`. Turns on "verbosity mode", which displays both debug messages and warnings. |
|     `-Dbug`      |                       Short for `Display debug`. Turns on debugging messages.                        |
|     `-Dwarn`     |                       Short for `Display warnings`. Turns on warning messages.                       |

(Table generated with [TablesGenerator.com](https://www.tablesgenerator.com/markdown_tables# "Table generator site"))

## Planned options

The table below lists the planned options that could be implemented in later versions of this "app":

|      **Option**       |                               **Description**                               | **Planned Version\*** |
| :-------------------: | :-------------------------------------------------------------------------: | :-------------------: |
|    `-m "Literal"`     | Displays the string `"Literal"` that comes immediately after the `-m` flag. |          1.3          |
| `--message "Literal"` |                               Alias of `-m`.                                |          1.3          |
|         `-l`          |                          Log the output to a file.                          |          1.3          |
|        `--log`        |                                Alias of `-l`                                |          1.3          |
|         `-s`          |                          Save output to a file(?).                          |         _???_         |
|       `--save`        |                               Alias of `-s`.                                |         _???_         |

\* - Not 100% accurate.

(Table generated with [TablesGenerator.com](https://www.tablesgenerator.com/markdown_tables# "Table generator site"))

## Incorrect CLI Input

### Single-line Flag Entered with Other Flags

If the user enters a single-output option (such as `-v` or `-h`) along with more than one option, then the program will
close with an error message.

### "Single-line Flag not Entered" Error

Or if the user enters a normal flag (such as `-Dall`) as the only option (as of v1.1), the program will close with an error
message.

For example:

```powershell
perl Main.pl -Dall
```

Will show the following output (as of v1.1):

```
Single-line flag not entered.
Exiting...
```


## Changelog

### **_1.2.0_**

Sorry for the hiatus. Here's the most recent updates to
this repository:

- Implementation Tweaks:
  - Add more comments.
  - Tweak flag setting:
    - Set all flags at once when testing for multiple flags, i.e. setting `$verbose` and unsetting the other flags.

### **_1.1.0_**

New Features:

- Allow `--version` to be used as an alias of `-v`.
- Allow `--help` to be used as an alias of `-h`.

Implementation Tweaks:

- Re-ordered the `$help` string's list to show single-line flags first.

Bug fixes:

- Tweaked `if` statements to actually allow for warning outputs to be enabled.
- Tweaked single-argument handling a bit.
  - Temporarily use the `die` keyword to kill the program when a single-line flag is not entered.
    - To be fixed in a future release.
- Fix `README.md`
  - Add missing heading "[Incorrect CLI Output](#incorrect-cli-input)".
  - Add various new sections.

### **_1.0_**

Program is initially released onto [Github](https://github.com/ethanKletschke/Perl-Command-Line-Parser).
