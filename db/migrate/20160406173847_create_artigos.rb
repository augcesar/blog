class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :descricao
      t.boolean :publicar
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
