class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :location
      t.boolean :projector
      t.integer :tables
      t.integer :chairs
      t.boolean :chillout

      t.timestamps
    end
  end
end
