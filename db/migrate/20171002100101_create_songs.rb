class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :songs do |t|

     t.string :song_title
      t.string :song_duration
      t.string :artist
  

     # add columns that you would need for this table
      #datetime

     t.timestamps #created_at, updated_at


   end
  end
end