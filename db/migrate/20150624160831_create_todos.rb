class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.string :location
      t.float :longitude
      t.float :latitude
      t.references :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
