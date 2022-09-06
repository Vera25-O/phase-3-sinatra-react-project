class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table "employees", force: :cascade do |t|
      t.string "username"
      t.string "position"
      t.string "image"
      t.integer "salary"
    end
  end
end
