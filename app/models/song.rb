class Song < ApplicationRecord

	def swapper(string, swear_set, user_input)
		string.split.each do |word|
			if swear_set.include?(word)
				word.gsub!(word, user_input.sample)
			end
		end
	end

end
