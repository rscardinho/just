class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :provider, :string
    add_column :users, :uid,      :string
  end
end
