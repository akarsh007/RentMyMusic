class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :immediate_parent_list
      t.string :parent_list
      t.timestamps

    end
  end
end
