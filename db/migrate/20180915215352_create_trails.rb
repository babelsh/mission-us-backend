class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.text :description, null: false, default: ''
      t.integer :duration, null: false, default: 0

      t.timestamps
    end
  end
end
