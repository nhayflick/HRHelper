class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.integer :employee_id
      t.integer :height
      t.integer :age
      t.string :favorite_food
      t.string :favorite_day
      t.date :date_of_birth
      t.integer :salary

      t.timestamps
    end
  end
end
