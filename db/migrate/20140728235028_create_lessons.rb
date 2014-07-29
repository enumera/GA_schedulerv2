class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :subject
      t.integer :timerequired
      t.integer :status_id

      t.timestamps
    end
  end
end
