use strict;

# The number of command line args.
my $numArgs = $#ARGV + 1;

# The version of the program.
my $version = "1.0";

# Help menu for the "-h" flag
my $help = <<END_MSG;
This program's accepted command line arguments are as follows:
\t"-v" -> The current version of the program.
\t"-Dall" -> Display all messages (Verbosity mode).
\t"-Dbug" -> Display debugging messages.
\t"-Dwarn -> Display warnings.
\t"-h" -> Help message.
END_MSG

if ($numArgs == 0) {
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
    if (@ARGV[0] eq "-v") {
        print "\nPerl Command Line ArgParser\nVersion 1.0\n\n";
        exit;
    } elsif (@ARGV[0] eq "-h") {
        print "\n$help\n";
        exit;
    } elsif (@ARGV[0] eq "-Dall" or @ARGV[0] eq "-Dbug") {
        printWarning("Single-line flag not entered.");
        print "\n";
    } else {
        die "\nInvalid flag entered: @ARGV[0]\n\n$help\n";
    }
}

foreach my $arg (@ARGV) {
    if ($arg eq "-Dall") {
        $verbose = 1;
        printVerbose("Verbosity enabled.");
    } elsif ($arg eq "-Dbug") {
        $debug = 1;
        printDebug("Debug output enabled.")
    } elsif ($arg eq "-v" or $arg eq "-h") {
        die "One-time flag entered: $arg\n\n$help\n";
    }
}
