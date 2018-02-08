note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EdoardoVignati"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	NEW_TEST_SET

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE}

		mySquareTest:SQUARE

		on_prepare
		do
			create mySquareTest.make(10)
		end


feature

	polygon_tests
		do
			assert ("SQUARE perimeter is side*4", mySquareTest.getPerimeter=40)
			assert ("SQUARE area is side*side", mySquareTest.getArea=100)
		end
feature
	on_clean
		do

		end

end


