

class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
     t.string	:drink
     t.string :instructions
    end
  end
end
