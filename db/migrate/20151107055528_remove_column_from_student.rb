class RemoveColumnFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :total, :integer
  end
end
