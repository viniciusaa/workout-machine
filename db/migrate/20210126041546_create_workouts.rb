# Will be able to store a list of exercises
class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.timestamps
    end
  end
end
