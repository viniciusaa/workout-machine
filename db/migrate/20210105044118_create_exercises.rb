# Will be able to store a list of exercises
class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
