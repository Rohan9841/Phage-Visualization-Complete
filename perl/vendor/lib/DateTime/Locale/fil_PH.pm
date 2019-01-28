###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file fil_PH.xml
# The source file version number was 1.4, generated on
# 2009/05/05 23:06:36.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::fil_PH;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::fil';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "7";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%m\/\%d\/\%y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_datetime_format = "\%a\ \%d\ \%b\ \%Y\ \%r\ \%Z";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "\%r";
    sub glibc_time_format { return $glibc_time_format }
}

{
    my $glibc_time_12_format = "\%I\:\%M\:\%S\ \%p";
    sub glibc_time_12_format { return $glibc_time_12_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::fil_PH

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'fil_PH' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Filipino Philippines.

=head1 DATA

This locale inherits from the L<DateTime::Locale::fil> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Lunes
  Martes
  Miyerkules
  Huwebes
  Biyernes
  Sabado
  Linggo

=head3 Abbreviated (format)

  Lun
  Mar
  Mye
  Huw
  Bye
  Sab
  Lin

=head3 Narrow (format)

  L
  M
  M
  H
  B
  S
  L

=head3 Wide (stand-alone)

  Lunes
  Martes
  Miyerkules
  Huwebes
  Biyernes
  Sabado
  Linggo

=head3 Abbreviated (stand-alone)

  Lun
  Mar
  Mye
  Huw
  Bye
  Sab
  Lin

=head3 Narrow (stand-alone)

  L
  M
  M
  H
  B
  S
  L

=head2 Months

=head3 Wide (format)

  Enero
  Pebrero
  Marso
  Abril
  Mayo
  Hunyo
  Hulyo
  Agosto
  Setyembre
  Oktubre
  Nobyembre
  Disyembre

=head3 Abbreviated (format)

  Ene
  Peb
  Mar
  Abr
  May
  Hun
  Hul
  Ago
  Set
  Okt
  Nob
  Dis

=head3 Narrow (format)

  E
  P
  M
  A
  M
  H
  H
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  Enero
  Pebrero
  Marso
  Abril
  Mayo
  Hunyo
  Hulyo
  Agosto
  Setyembre
  Oktubre
  Nobyembre
  Disyembre

=head3 Abbreviated (stand-alone)

  Ene
  Peb
  Mar
  Abr
  May
  Hun
  Hul
  Ago
  Set
  Okt
  Nob
  Dis

=head3 Narrow (stand-alone)

  E
  P
  M
  A
  M
  H
  H
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  BCE
  CE

=head3 Narrow

  BCE
  CE

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Martes, Pebrero 05 2008
   1995-12-22T09:05:02 = Biyernes, Disyembre 22 1995
  -0010-09-15T04:44:23 = Sabado, Setyembre 15 -10

=head3 Long

   2008-02-05T18:30:30 = Pebrero 5, 2008
   1995-12-22T09:05:02 = Disyembre 22, 1995
  -0010-09-15T04:44:23 = Setyembre 15, -10

=head3 Medium

   2008-02-05T18:30:30 = Peb 5, 2008
   1995-12-22T09:05:02 = Dis 22, 1995
  -0010-09-15T04:44:23 = Set 15, -10

=head3 Short

   2008-02-05T18:30:30 = 2/5/08
   1995-12-22T09:05:02 = 12/22/95
  -0010-09-15T04:44:23 = 9/15/-10

=head3 Default

   2008-02-05T18:30:30 = Peb 5, 2008
   1995-12-22T09:05:02 = Dis 22, 1995
  -0010-09-15T04:44:23 = Set 15, -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Martes, Pebrero 05 2008 18:30:30 UTC
   1995-12-22T09:05:02 = Biyernes, Disyembre 22 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = Sabado, Setyembre 15 -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = Pebrero 5, 2008 18:30:30 UTC
   1995-12-22T09:05:02 = Disyembre 22, 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = Setyembre 15, -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = Peb 5, 2008 18:30:30
   1995-12-22T09:05:02 = Dis 22, 1995 09:05:02
  -0010-09-15T04:44:23 = Set 15, -10 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 2/5/08 18:30
   1995-12-22T09:05:02 = 12/22/95 09:05
  -0010-09-15T04:44:23 = 9/15/-10 04:44

=head3 Default

   2008-02-05T18:30:30 = Peb 5, 2008 18:30:30
   1995-12-22T09:05:02 = Dis 22, 1995 09:05:02
  -0010-09-15T04:44:23 = Set 15, -10 04:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Mar
   1995-12-22T09:05:02 = 22 Bye
  -0010-09-15T04:44:23 = 15 Sab

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = Mar, 2-5
   1995-12-22T09:05:02 = Bye, 12-22
  -0010-09-15T04:44:23 = Sab, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Peb
   1995-12-22T09:05:02 = Dis
  -0010-09-15T04:44:23 = Set

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Peb 5
   1995-12-22T09:05:02 = Dis 22
  -0010-09-15T04:44:23 = Set 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Mar Peb 5
   1995-12-22T09:05:02 = Bye Dis 22
  -0010-09-15T04:44:23 = Sab Set 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = Pebrero 5
   1995-12-22T09:05:02 = Disyembre 22
  -0010-09-15T04:44:23 = Setyembre 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Mar Pebrero 5
   1995-12-22T09:05:02 = Bye Disyembre 22
  -0010-09-15T04:44:23 = Sab Setyembre 15

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (yyyy-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (EEE, yyyy-M-d)

   2008-02-05T18:30:30 = Mar, 2008-2-5
   1995-12-22T09:05:02 = Bye, 1995-12-22
  -0010-09-15T04:44:23 = Sab, -010-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Peb
   1995-12-22T09:05:02 = 1995 Dis
  -0010-09-15T04:44:23 = -10 Set

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Mar, 2008 Peb 5
   1995-12-22T09:05:02 = Bye, 1995 Dis 22
  -0010-09-15T04:44:23 = Sab, -10 Set 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Pebrero
   1995-12-22T09:05:02 = 1995 Disyembre
  -0010-09-15T04:44:23 = -10 Setyembre

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -10 Q3

=head3 yyMM (yy-MM)

   2008-02-05T18:30:30 = 08-02
   1995-12-22T09:05:02 = 95-12
  -0010-09-15T04:44:23 = -10-09

=head3 yyMMM (MMM yy)

   2008-02-05T18:30:30 = Peb 08
   1995-12-22T09:05:02 = Dis 95
  -0010-09-15T04:44:23 = Set -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

Linggo


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
