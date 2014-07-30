class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
    
      t.belongs_to :role
      t.string :picture
      t.belongs_to :location

      t.timestamps
    end
  end
end
