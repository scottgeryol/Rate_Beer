class AddImageToBeer < ActiveRecord::Migration[6.0]
  def change
    add_column :beer, :image, :string
  end
end
