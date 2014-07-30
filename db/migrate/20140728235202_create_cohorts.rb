class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.belongs_to :location
      t.date :start_date
      t.date :end_date
      t.integer :course_id
      t.integer :status_id

      t.timestamps
    end
  end
end
