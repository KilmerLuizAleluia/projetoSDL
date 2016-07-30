class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :client
      t.datetime :data
      t.string :imagem
      t.string :tamanho

      t.timestamps
    end
  end
end
