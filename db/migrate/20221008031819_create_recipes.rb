class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :instructions
      t.integer :minutes_to_complete
      t.integer :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
