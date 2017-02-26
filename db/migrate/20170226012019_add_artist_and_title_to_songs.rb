class AddArtistAndTitleToSongs < ActiveRecord::Migration[5.0]
	def change
		create_table :songs do |t|
			t.string :title
			t.string :artist
			t.text :lyrics

			t.timestamps
		end
	end
end
