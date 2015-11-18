class CreateTollywoods < ActiveRecord::Migration
  def change
    create_table :tollywoods do |t|
      t.string :name
      t.integer :age
      t.string :role
      t.string :star
      t.boolean :political

      t.timestamps null: false
    end
  end
end
