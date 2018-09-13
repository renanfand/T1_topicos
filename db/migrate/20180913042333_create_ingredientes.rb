class CreateIngredientes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredientes do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
