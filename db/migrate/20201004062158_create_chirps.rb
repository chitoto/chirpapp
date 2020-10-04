class CreateChirps < ActiveRecord::Migration[5.2]
  def change
    create_table :chirps do |t|
      t.string :title
      t.text :content
    end
  end
end
