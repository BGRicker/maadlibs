class AddSwapWordsToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :nouns, :string
    add_column :songs, :adjectives, :string
    add_column :songs, :people, :string
    add_column :songs, :verbs, :string
  end
end
