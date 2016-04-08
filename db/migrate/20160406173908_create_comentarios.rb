class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :artigo, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true
      t.text :descricao

      t.timestamps null: false
    end

    add_index :comentarios, [:artigo_id, :descricao], unique: true
  end
end
