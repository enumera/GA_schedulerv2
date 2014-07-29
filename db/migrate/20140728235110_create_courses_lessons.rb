class CreateCoursesLessons < ActiveRecord::Migration
   def change
  create_table :courses_lessons, id: false do |t|
    t.belongs_to :course
    t.belongs_to :lesson
  end
end
end
