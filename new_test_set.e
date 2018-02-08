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
			create mysquaretest.make(10)
		end


feature

	TEST_POLYGON
		do

			assert ("SQUARE area is side*side", mySquareTest.getarea=100)
		end
feature
	on_clean
		do

		end

end


