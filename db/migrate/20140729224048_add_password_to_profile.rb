class AddPasswordToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :password, :string
  end
end
