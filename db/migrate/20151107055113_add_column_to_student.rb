class AddColumnToStudent < ActiveRecord::Migration
  def change
    add_column :students, :fname, :string
    add_column :students, :lname, :string
  end
end
