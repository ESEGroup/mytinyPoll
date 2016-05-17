class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.string :senha
      t.string :idfacebook

      t.timestamps null: false
    end
  end
end
