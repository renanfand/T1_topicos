class CreatePratos < ActiveRecord::Migration[5.2]
  def change
    create_table :pratos do |t|
      t.text :descricao
      t.float :preco
      t.float :tempoPreparo

      t.timestamps
    end
  end
end
