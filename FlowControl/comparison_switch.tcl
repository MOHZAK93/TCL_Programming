set string "a"
switch $string {
	"a"	-
	"b" {
		puts "Using the body for pattern 'b' for both a and b"
	}
}

# Name polygons, based on the number of edges.

set edge_count 3

switch $edge_count {
	0 -
	1 -
	2 {
		puts "Not a polygon."
	}
	3 {
		puts "This is a triangle."
	}
	4 {
		puts "This is a quadrilateral."
	}
	5 {
		puts "This is a pentagon."
	}
	default {
		puts "Unknown polygon."
	}
}

# Note that patterns are not subject to substitutions if contained in braces.

set x ONE
set y 1
set z ONE

switch $x {
	$z {
		set y1 [expr {$y+1}]
		puts "MATCH \$z. $y + $z is $y1"
	}
	ONE {
		set y1 [expr {$y+1}]
		puts "MATCH ONE. $y + one is $y1"
	}
	TWO {
		set y1 [expr {$y+2}]
		puts "MATCH TWO. $y + two is $y1"
	}
	THREE {
		set y1 [expr {$y+3}]
		puts "MATCH THREE. $y + three is $y1"
	}
	default {
		puts "$x is NOT A MATCH"
	}
}
