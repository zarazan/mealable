class CreateIngredients < ActiveRecord::Migration[7.0]

  def change
    create_table :ingredients do |t|
      t.references :recipe, foreign_key: true
      t.references :substance, foreign_key: true
      t.string :amount
      t.timestamps
    end
  end

end
