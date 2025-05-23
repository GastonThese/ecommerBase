class AddPublishToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :publish, :boolean, default: false
  end
end
