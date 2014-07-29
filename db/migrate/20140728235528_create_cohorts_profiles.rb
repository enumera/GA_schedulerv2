class CreateCohortsProfiles < ActiveRecord::Migration
     def change
  create_table :cohorts_profiles, id: false do |t|
    t.belongs_to :cohort
    t.belongs_to :profile
  end
end
end
