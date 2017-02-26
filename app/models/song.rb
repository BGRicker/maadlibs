class Song < ApplicationRecord
	validates_presence_of :artist, :title

	def swapper(string, swear_set, user_input)
		swear_set.each do |swear|
			string.gsub!(/\b(#{swear})\b/i, "<i>#{user_input.sample}</i>")
		end
	end

end
