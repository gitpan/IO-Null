# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'
# Time-stamp: "2000-09-22 16:05:12 MDT"

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..3\n"; }
END {print "not ok 1\n" unless $loaded;}
use IO::Null;
$loaded = 1;
print "ok 1\n";
my $x = IO::Null->new;
$^W = 0;
$x->print('FAIL 2'); # should go nowhere and do nothing
print "ok 2\n";
$x->close(); # no-ope
print "ok 3\n";

