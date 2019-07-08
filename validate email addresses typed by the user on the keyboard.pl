#! /usr/bin/perl
# author: Massimo Croci / massimocroci1976@gmail.com / 07.2019

use utf8;                                  # used directive
use warnings;                              # used directive
use feature "say";                         # used directive
use Data::Dumper qw(Dumper);               # used directive
# use strict;                              # unused `pragma strict` directive



say " ";
say "Hello, welcome to this Perl script to validate email addresses typed by the user on the keyboard.";
say " ";

while(True){

	say " ";
	say "====================================================================================";
	say " ";
	print "Please type here the email address to be validated. When finished, press `Enter` :";
	my $mail=<STDIN>;
	chomp($mail);

	check_email($mail);
	try_again();






	sub check_email(){     # start `check_email` subroutine

		say " ";
		my $mail=shift(@_);

        	if ($mail =~ m/([\w\+\-\.]+)@([\w\+\-]+)\.([\w\+\-\.]+)/g){

                        say " ";
			# say $1.'@'.$2.'.'.$3." is a valid email address.";
                        say "$mail is a valid email address.";
			say " ";
                        say "---------------------------------------------------"

		}else {

                	say " ";
                        say "$mail is NOT a valid email address.";
                        say " ";
                        say "---------------------------------------------------"

                }

	} # end `check_email` subroutine









	sub try_again(){  # start `try_again` subroutine

		say " ";
		say " Do you want to try another email address ? (Y/N) :";
		my $try_again=<STDIN>;
		chomp($try_again);

		while ($try_again ne "y" && $try_again ne "Y" && $try_again ne "n" && $try_again ne "N"){

			say " ";
			say "You typed $try_again !!!! Please, type `y`,`n`,`Y` or `N`.";
			say " ";
                        say " Do you want to try another email address ? (Y/N) :";
                        $try_again=<STDIN>;
                        chomp($try_again);
			next;

		}

		if ($try_again eq "Y" || $try_again eq "y" ){

			say " ";
			next;

		} elsif ($try_again eq "N" || $try_again eq "n" ){

			say " ";
			say "Ok, thanks for using this software written in Perl !!!!!";
		        say " ";
			say "Bye bye";
			say " ";
			last;

		}



	} # end `try_again` subroutine




}
