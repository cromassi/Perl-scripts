#! /usr/bin/perl

use utf8;                                  # used directive
use warnings;                              # used directive
use feature "say";                         # used directive
use Data::Dumper qw(Dumper);               # used directive
# use strict;                              # unused `pragma strict` directive





say " ";
say "Hello, welcome to this Perl script to validate email addresses as strings onto a  text file.";
say " ";


check_email();

sub check_email(){
	
	say "List of valid email addresses : ";
	say "*******************************  ";

        while($_=<<>>){                          # $_ == Perls' favourite default

                if ($_ =~ m/([\w\+\-\.]+)@([\w\+\-]+)\.([\w\+\-\.]+)/g){

                        say " ";
                        say "Row $. :";
			# say " ";
                        # say '$1= '.$1;
                        # say " ";
                        # say '$2= '.$2;
                        # say " ";
                        # say '$3= '.$3;
                        say " ";
                        say $1.'@'.$2.'.'.$3;
                        say " ";
                        say "---------------------------------------------------";
			# say " ";
                } else {

                        next;

                }
        }


}

