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
		local
			index:INTEGER
		do
			print ("%N%NLet's try Eiffel lang!%N----------------------%N%N")
			create mySquare.make(10)

				print("%NArea: ")
					io.put_real (mySquare.getArea)
					print("%N")
				print("Perimeter: ")
					io.put_real (mySquare.getPerimeter)
					print("%N")

			create myRectangle.make(20,5)

				print("%NArea: ")
					io.put_real (myRectangle.getArea)
					print("%N")
				print("Perimeter: ")
					io.put_real (myRectangle.getPerimeter)
					print("%N%N")


			print("Now I'm gonna create 10 different squares in a loop%N")

			from
				index:=0
			until
				index>=10
			loop
				mySquare.make (index)
					print(" with side: ")
						io.put_real(index)
						print("%N")
				index:=index+1
			end

		end

end
