class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :alcoholic
      t.string :img
      t.string :glass
      t.string :ingredient1
      t.string :ingredient2
      t.string :ingredient3
      t.string :ingredient4
      t.string :ingredient5
      t.string :ingredient6
      t.string :ingredient7
      t.string :ingredient8
      t.string :ingredient9
      t.string :ingredient10
      t.string :ingredient11
      t.string :ingredient12
      t.string :ingredient13
      t.string :ingredient14
      t.string :ingredient15

      t.timestamps
    end
  end
end
