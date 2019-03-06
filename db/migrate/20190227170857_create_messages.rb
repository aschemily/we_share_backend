class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :messages
      t.integer :conversation_id
      t.integer :receiver_id
      t.integer :sender_id
      t.integer :favorite_id

      t.timestamps
    end
  end
end
