class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :brewery_id
      t.integer :beer_id

      t.timestamps
    end
  end
end
