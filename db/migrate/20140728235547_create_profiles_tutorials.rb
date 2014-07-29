class CreateProfilesTutorials < ActiveRecord::Migration
     def change
  create_table :profiles_tutorials, id: false do |t|
    t.belongs_to :profile
    t.belongs_to :tutorial
  end
end
end
