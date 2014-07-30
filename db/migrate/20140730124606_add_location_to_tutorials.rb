class AddLocationToTutorials < ActiveRecord::Migration
  def change

          add_column :tutorials, :location_id, :integer
  end
end
