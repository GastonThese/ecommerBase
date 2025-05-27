class AddDefaultAndNotNullToPublish < ActiveRecord::Migration[7.2]
  def change
    change_column_default :products, :publish, false
    change_column_null :products, :publish, false
  end
end
