# Prima lezione in Perl

use strict;
use warnings;

print "Come ti chiami?";

my $nome = <STDIN>;
chomp $nome;

print "ciao, $nome \n ";
