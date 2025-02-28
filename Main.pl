use strict;

# The number of command line args
my $numArgs = $#ARGV + 1;

# The verbosity flag.
my $verbose = 0;

# Help menu for the "-h" flag
my $help = <<END_MSG;
ComLine Args:
\t"-v" -> Version info.
\t"-Dall" -> Display all (Verbosity mode).
\t"-h" -> Help message.
END_MSG

foreach my $v (@ARGV) {
    if ($v eq "-v") {
        print "Version 1.0\n";
        exit;
    } elsif ($v eq "-Dall") {
        $verbose = 1;
        print "Verbosity enabled.\n"
    } elsif ($v eq "-h") {
        print $help;
        exit;
    }
}
