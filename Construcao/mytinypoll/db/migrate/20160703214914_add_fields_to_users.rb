class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cpf, :string
    add_column :users, :fb_token, :string
    add_column :users, :name, :string
  end
end
