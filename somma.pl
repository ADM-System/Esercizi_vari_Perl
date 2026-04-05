#esercizio somma

use strict;
use warnings;

print "inserire numero : ";
my $n1 = <STDIN>;
chomp $n1;

print "inserie secondo numero : ";
my $n2 = <STDIN>;
chomp $n2;

my $somma = $n1 + $n2;
print "la somma e' : $somma \n ";

#esercizio concatenazione di stringhe

my $parola1 = "bella";
my $parola2 = "giornata oggi";
print $parola1." ".$parola2;
