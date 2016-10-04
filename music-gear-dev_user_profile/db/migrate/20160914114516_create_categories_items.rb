class CreateCategoriesItems < ActiveRecord::Migration[5.0]
  def change
    create_table 'categories_items', :id => false do |t|
      t.column :category_id, :integer
      t.column :item_id, :integer
    end
  end
end
