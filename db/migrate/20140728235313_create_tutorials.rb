class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.integer :status_id
      t.integer :timerquired
      t.string :cohort_id
      t.string :subject

      t.timestamps
    end
  end
end
