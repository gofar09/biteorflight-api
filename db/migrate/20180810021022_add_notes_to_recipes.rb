class AddNotesToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :notes, :string
  end
end
