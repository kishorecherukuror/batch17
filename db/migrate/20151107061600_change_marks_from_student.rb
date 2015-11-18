class ChangeMarksFromStudent < ActiveRecord::Migration
  def change
    change_column :students,:marks,:float
  end
end
