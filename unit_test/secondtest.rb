# File:  mars.rb

require "./mars"
#require "mars"
#require_relative "mars"

require "rubygems"
#require 'test/unit/ui/console/testrunner'
require "test/unit"
#require "test-unit"

class Secondtest < Test::Unit::TestCase
#class Firstest < Test::Unit::TestResult

	def setup
    	@answermars = Secondtest.new("no")
    end

    def teardown
    ## Nothing really
    end	
	
	
	def noinput
		#answermars = "no"
		#expected output = "That is not exactly true. You did not know that water on Mars is frozen in the ground, and a day on Mars is longer than one on Earth. It is time to die, Martian."
		#assert_equal(expected_output, mars(answermars))
		assert_equal("That is not exactly true. You did not know that water on Mars is frozen in the ground, and a day on Mars is longer than one on Earth. It is time to die, Martian.", @answermars.mars("no") )
	end
	
	def test_fail
    	assert(false, 'Assertion was false.')
    end
end
