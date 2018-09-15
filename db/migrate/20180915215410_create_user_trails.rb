class CreateUserTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_trails do |t|
      t.references :trail
      t.references :user

      t.timestamps
    end
  end
end
