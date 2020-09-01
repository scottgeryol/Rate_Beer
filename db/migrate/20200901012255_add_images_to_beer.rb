class AddImagesToBeer < ActiveRecord::Migration[6.0]
  def change
    add_column :beer, :image_url, :string
  end
end
