#!/usr/bin/env ruby

class Hamming

  def self.compute(s1,s2)

  	# Fail if lengths are not the same
  	if s1.length != s2.length
  	  return raise(ArgumentError)
  	end

  	# Calculate the number of inequal chars
  	hamming_num = 0
  	for i in 0..s1.length
  		hamming_num += 1 if s1[i] != s2[i] 
  	end

  	return hamming_num

  end

end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end