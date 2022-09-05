class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employee do |t|
      t.string :name
    end
  end
end
