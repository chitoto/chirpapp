class RemoveTitleFromChirps < ActiveRecord::Migration[5.2]
  def change
    remove_column :chirps, :title, :string
  end
end
