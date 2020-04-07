package getopt;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict 'subs', 'vars';
use warnings;
no warnings 'once';

use Getopt::Std ();

sub import {
    my $package = shift;
    my $caller = caller(0);
    my %opts;
    Getopt::Std::getopt(shift, \%opts);
    for (keys %opts) { ${"$caller\::opt_$_"} = $opts{$_} }
}

1;
# ABSTRACT: Shortcut for using Getopt::Std's getopt() from the command line

=head1 SYNOPSIS

 % perl -Mgetopt=oDI -e '...'

is shortcut for:

 % perl -MGetopt::Std -e 'getopt("oDI"); ...'


=head1 DESCRIPTION


=head1 SEE ALSO

L<Getopt::Std>

L<getopts>

perl's C<-s> switch
