class AddPasswordconfirmationToProfile < ActiveRecord::Migration
   def change
    add_column :profiles, :password_confirmation, :string
  end
end
