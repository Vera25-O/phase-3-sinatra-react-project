class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :salary
      t.string :username
      t.integer :employee_id
      t.integer :department_id
    end
  end
end
