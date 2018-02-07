note
	description: "poligoni application root class"
	author: "EdoardoVignati"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make
feature
	mySquare:SQUARE
	myRectangle:RECTANGLE

feature {NONE}

	make
		do
			print ("%N%NLet's try Eiffel lang!%N----------------------%N")
			create mySquare.make(10)

				print("Area: ")
					io.put_real (mySquare.getArea)
					print("%N")
				print("Perimeter: ")
					io.put_real (mySquare.getPerimeter)
					print("%N")

			create myRectangle.make(20,5)

				print("Area: ")
					io.put_real (myRectangle.getArea)
					print("%N")
				print("Perimeter: ")
					io.put_real (myRectangle.getPerimeter)
					print("%N%N")

		end

end
