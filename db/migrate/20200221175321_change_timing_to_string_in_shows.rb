class ChangeTimingToStringInShows < ActiveRecord::Migration[5.2]
  def change
    change_column :shows, :timing, :string
  end
end
