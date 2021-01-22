# Will be able to store a list of exercises
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
