class AddCozinhaIdToPratos < ActiveRecord::Migration[5.2]
  def change
    add_column :pratos, :cozinha_id, :integer
  end
end
