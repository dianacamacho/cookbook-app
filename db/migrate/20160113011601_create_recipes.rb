class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.string :directions
      t.string :ingredients

      t.timestamps null: false
    end
  end
end
