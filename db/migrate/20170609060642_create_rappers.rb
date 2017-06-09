class CreateRappers < ActiveRecord::Migration[5.0]
  def change
    create_table :rappers do |t|
      t.string :name
      t.string :picture
      t.string :city

      t.timestamps

    end
  end
end
