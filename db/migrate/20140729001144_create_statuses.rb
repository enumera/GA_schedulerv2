class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :thing
      t.string :statusname

      t.timestamps
    end
  end
end
