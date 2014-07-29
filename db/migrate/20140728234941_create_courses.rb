class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.text :outcome
      t.integer :status_id

      t.timestamps
    end
  end
end
