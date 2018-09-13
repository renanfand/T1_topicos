class CreateCozinhas < ActiveRecord::Migration[5.2]
  def change
    create_table :cozinhas do |t|
      t.string :nome
      t.string :endereco
      t.integer :telefone

      t.timestamps
    end
  end
end
