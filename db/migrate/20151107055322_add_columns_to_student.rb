class AddColumnsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :marks, :integer
  end
end
