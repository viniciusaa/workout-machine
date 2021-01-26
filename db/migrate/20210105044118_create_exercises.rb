# Exercise created by the user to compose the daily workout
class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :duration
      t.integer :effort_level
      t.timestamps
    end
  end
end
