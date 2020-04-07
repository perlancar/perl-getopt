package getopts;

# AUTHORITY
# DATE
# DIST
# VERSION

use Getopt::Std ();

sub import {
    my $package = shift;
    my $caller = caller(0);
    my %opts;
    Getopt::Std::getopts(shift, \%opts);
    for (keys %opts) { ${"$caller\::opt_$_"} = $opts{$_} }
}

1;
# ABSTRACT: Shortcut for using Getopt::Std's getopts() from the command line

=head1 SYNOPSIS

 % perl -Mgetopts=oif: -e '...'

is shortcut for:

 % perl -MGetopt::Std -e 'getopts("oif:"); ...'


=head1 DESCRIPTION


=head1 SEE ALSO

L<Getopt::Std>

L<getopt>

perl's C<-s> switch
