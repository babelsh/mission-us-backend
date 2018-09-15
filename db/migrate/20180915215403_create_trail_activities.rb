class CreateTrailActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :trail_activities do |t|
      t.date :starts_at
      t.date :ends_at
      t.references :trail
      t.references :activity

      t.timestamps
    end
  end
end
