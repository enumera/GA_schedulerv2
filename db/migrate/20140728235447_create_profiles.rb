class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :primary_location
      t.belongs_to :role
      t.string :picture
      t.string :assigned_location

      t.timestamps
    end
  end
end
