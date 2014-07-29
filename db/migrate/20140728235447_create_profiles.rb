class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :primarylocation
      t.belongs_to :role
      t.string :picture
      t.string :assignedlocation

      t.timestamps
    end
  end
end
