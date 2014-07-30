class AddClassroomIdToTutorials < ActiveRecord::Migration
  def change
  
       add_column :tutorials, :classroom_id, :integer

  end
end
