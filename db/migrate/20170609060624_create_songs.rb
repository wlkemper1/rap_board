class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.integer :rapper_id
      t.integer :producer_id
      t.string :audio_link
      t.string :year
      t.string :title

      t.timestamps

    end
  end
end
