#!/usr/bin/perl
use strict;
use warnings;

print "Content-type: text/html\n\n";

# Получаем параметры из строки (например: x=2 y=10)
my ($x, $y);

foreach my $arg (@ARGV) {
    if ($arg =~ /x=(\d+)/) { $x = $1; }
    if ($arg =~ /y=(\d+)/) { $y = $1; }
}

my $result = $x ** $y;

print "<html><body>";
print "<h2>$x<sup>$y</sup> = $result</h2>";
print "</body></html>";
