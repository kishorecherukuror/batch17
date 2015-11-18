class AddColumnssToStudent < ActiveRecord::Migration
  def change
    add_column :students, :total, :integer
  end
end
