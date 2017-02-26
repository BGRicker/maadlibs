class Song < ApplicationRecord

	def swapper(string, swear_set, user_input)
		swear_set.each do |swear|
			string.gsub!(swear, user_input.sample)
		end
	end

	def to_param
		Digest::SHA1.hexdigest(Time.now.to_s)
	end

end
