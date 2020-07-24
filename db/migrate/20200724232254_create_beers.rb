class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :brewery
      t.string :name
      t.string :style
      t.integer :abv
      t.integer :rating

      t.timestamps
    end
  end
end
