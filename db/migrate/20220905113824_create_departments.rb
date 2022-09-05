class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :department do |t|
      t.string :title
    end
  end
end
