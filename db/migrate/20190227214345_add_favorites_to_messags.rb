class AddFavoritesToMessags < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :favorite_id, :integer
  end
end
