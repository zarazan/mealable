class CreateSubstances < ActiveRecord::Migration[7.0]

  def change
    create_table :substances do |t|
      t.string :name, null: false
      t.timestamps
    end

    add_index :substances, :name, unique: true
  end

end
