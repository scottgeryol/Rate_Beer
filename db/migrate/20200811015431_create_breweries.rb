class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :location
      t.integer :beer_id
      t.integer :rating
      t.string :website

      t.timestamps
    end
  end
end
