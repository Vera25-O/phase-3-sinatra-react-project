class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employee do |t|
      t.string :username
      t.integer :salary
    end
  end
end
