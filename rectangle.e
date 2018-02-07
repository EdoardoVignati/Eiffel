note
	description: "Summary description for {RECTANGLE}."
	author: "EdoardoVignati"
	date: "$Date$"
	revision: "$Revision$"

class
	RECTANGLE
inherit
	POLYGON
create
	make

	feature
		base:REAL
		height:REAL
	feature{ANY}
		make(b:REAL; h:REAL)
	require else
		base>=0
		height>=0
	do
		base:=b
		height:=h
		print("New RECTANGLE created%N");
	end
	feature{ANY}
		getArea:REAL
		do
			Result:=(base*height)
		ensure then
			Result>=0
		end

	feature{ANY}
		getPerimeter:REAL
		do
			Result:=(base*2 )+(height*2)

		ensure then
			Result>=0
		end
	invariant
		RectangleInvariant: base/=height
		-- A polygon with base=height is a rectangle but in this case
		-- the square class is the correct class to to this.

end
