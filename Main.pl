use strict;

# Store the number of command line args.
my $numArgs = $#ARGV + 1;

# NB -> The version of the program.
my $version = "1.2.0";

# Help menu for the "-h" flag
my $help = <<END_MSG;
This program's accepted command line arguments are as follows:
\t"-v" or "--version" -> The current version of the program.
\t"-h" or "--help" -> Help message.
\t"-Dall" -> Display all messages (Verbosity mode).
\t"-Dbug" -> Display debugging messages.
\t"-Dwarn -> Display warnings.
END_MSG

# If there are no arguments
if ($numArgs == 0) {
  # Display help and exit the program.
    print "\nPlease enter a command-line argument to use this program.\n\n$help\n";
    exit;
}

# The verbosity and debug flags.
my $verbose = 0;
my $debug = 0;
my $warns = 0;

# A subroutine to print messages if the "$verbose" flag is true.
sub printVerbose {
    if ($verbose) {
        print "[Dall] $_[0]\n";
    }
}

# A subroutine to print debug messages if "$verbose" or "$debug" is true.
sub printDebug {
    if ($debug or $verbose) {
        print "[Debug] $_[0]\n";
    }
}

# A subroutine to print warnings if "$warns" (or "$verbose") is true.
sub printWarning {
    if ($warns or $verbose) {
        print "[Warning] $_[0]\n";
    }
}

# If there's only one argument entered
if ($numArgs == 1) {
    if (@ARGV[0] eq "-v" or @ARGV[0] eq "--version") {
        # Display the program name and version.
        print "\nPerl Command Line ArgParser\n$version\n\n";
        exit;
    } elsif (@ARGV[0] eq "-h" or @ARGV[0] eq "--help") {
        # Display the help.
        print "\n$help\n";
        exit;
    } elsif (@ARGV[0] eq "-Dall" or @ARGV[0] eq "-Dbug" or @ARGV[0] eq "-Dwarn") {
        die "\nSingle-line flag not entered.\nExiting...\n";
    } else {
        die "\nInvalid flag entered: @ARGV[0]\n\n$help\n";
    }
}

# If there's more than one command-line argument entered.
foreach my $arg (@ARGV) {
    if ($arg eq "-Dall") {
        # Set verbose to true, and debug and warns to false.
        $verbose = 1;
        $debug = 0;
        $warns = 0;

        # Print the verbose output.
        printVerbose("Verbosity enabled.");
    } elsif ($arg eq "-Dbug") {
        # Set Debug to true, and the other flags to false.
        $verbose = 0;
        $debug = 1;
        $warns = 0;

        # Print debug output.
        printDebug("Debug output enabled.")
    } elsif ($arg eq "-Dwarn") {
        # Set warnings to true, and the other flags to false.
        $verbose = 0;
        $debug = 0;
        $warns = 1;

        # Print warning output.
        printWarning("Warnings enabled.");
    } elsif ($arg eq "-v" or $arg eq "-h") {
        # Close the program if a one-time flag is entered with multiple other flags.
        die "One-time flag entered: $arg\n\n$help\n";
    } else {
        # Close the program if an invalid flag is entered.
        die "\nInvalid flag entered: $arg\n\n$help\n";
    }
}
