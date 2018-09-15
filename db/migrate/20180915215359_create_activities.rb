class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.text :title, null: false, default: ''
      t.text :description, null: false, default: ''

      t.timestamps
    end
  end
end
