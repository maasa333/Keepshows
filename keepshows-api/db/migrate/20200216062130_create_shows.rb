class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :artist
      t.date :date
      t.string :note

      t.timestamps
    end
  end
end
