class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :email
      t.string :username
      t.date :dob

      t.timestamps null: false
    end
  end
end
