# Perl Command Line Parser v1.2.1

A test script written in Perl to parse command line arguments and output 
different things depending on the option entered.

- Author: Ethan Kletschke
- Version: `1.2.2` (DEPRECATED)
- Developed on: Windows 11
- License: MIT

## _**DEPRECATED!!**_

_**This project is now deprecated. No further updates will happen unless someone else takes over.**_


## Table of Contents

- [Perl Command Line Parser v1.2.1](#perl-command-line-parser-v121)
  - [_**DEPRECATED!!**_](#deprecated)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Options](#options)
  - [Planned options](#planned-options)
  - [Incorrect CLI Input](#incorrect-cli-input)
    - [Single-line Flag Entered with Other Flags](#single-line-flag-entered-with-other-flags)
    - ["Single-line Flag not Entered" Error](#single-line-flag-not-entered-error)
  - [Changelog](#changelog)
    - [**_1.2.2_**](#122)
    - [**_1.2.1_**](#121)
    - [**_1.2.0_**](#120)
    - [**_1.1.0_**](#110)
    - [**_1.0_**](#10)

## Description

The **_Perl Command Line Parser_** is a simple command-line interface (CLI) app
(esssentially just a test script) that parses command line arguments passed to 
the program. It is only intended to be a skills reference, and as a test
to see how the Perl language works when used for a simple software application.

## Options

The table below lists the currently-implemented valid command-line arguments:

|    **Option**    |                                           **Description**                                            |
| :--------------: | :--------------------------------------------------------------------------------------------------: |
| `-v`/`--version` |                                    Displays version information.                                     |
|  `-h`/`--help`   |         Help menu. Also displays on incorrect CLI input (see [here](#incorrect-cli-input)).          |
|     `-Dall`      | Short for `Display all`. Turns on "verbosity mode", which displays both debug messages and warnings. |
|     `-Dbug`      |                       Short for `Display debug`. Turns on debugging messages.                        |
|     `-Dwarn`     |                       Short for `Display warnings`. Turns on warning messages.                       |

(Table generated with [TablesGenerator.com](https://www.tablesgenerator.com/markdown_tables#))

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

(Table generated with [TablesGenerator.com](https://www.tablesgenerator.com/markdown_tables#))

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

### **_1.2.2_**

- Documentation updates:
  - Add MIT `LICENSE` file.
  - Tweak `README.md`

### **_1.2.1_**

Stop working on project.

### **_1.2.0_**

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
