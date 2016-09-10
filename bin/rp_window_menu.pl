#!/usr/bin/perl -w


@windows = split("\n", `ratpoison -c windows`);

$menu_params = '';
for $window (@windows) {

    ($id, $title) = split( '\-|\+|\*', $window );

    $window =~ s/://g;

    $menu_params .= "'$window:exec ratpoison -c \"select $id\"' ";

}


$menu_command = "9menu -bg black -fg lightgray $menu_params\n";

`$menu_command`;
