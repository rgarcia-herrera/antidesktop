#!/usr/bin/perl
@oscuros = (
    "darkgreen",
    "midnightblue",
    "darkblue",
    "firebrick4",
    "gray1",
    "gray2",
    "gray5",
    "gray10",
    "gray15",
    "gray20",
    "#4f444f",
    "#44444f",
    "#444f44",
    
    );

@claros = (
    "white",
    "azure",
    "cornsilk",
    "ivory",
    "seashell",
    "gray96"
);


$comando = "xterm -bg ".$oscuros[rand @oscuros]." -fg ".$claros[rand @claros];

print `$comando`;
#print $comando;
