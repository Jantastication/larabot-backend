class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.text :comment

      t.belongs_to :movie
      t.belongs_to :user

      t.timestamps
    end
  end
end
