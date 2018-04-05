# File:  mars.rb

require "./mars"
require "rubygems"
require "test/unit"


class Testmars < Test::Unit::TestCase

	def setup
    	#@answermars = Testmars.new("yes")
    end


    def teardown
    ## Nothing really
    end	
	
	
	def input
		assert_equal(expected_output, mars(answermars))
	end
	
	
	def test_fail
    	assert(true, 'Assertion was false.')   	
    end
    
end
