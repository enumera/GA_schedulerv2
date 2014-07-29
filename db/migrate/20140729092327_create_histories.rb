class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :p_id
      t.integer :st_id
      t.integer :t_id
      t.integer :c_id

      t.timestamps
    end
  end
end
