class AddNotNullToCode < ActiveRecord::Migration[7.2]
  def change
    change_column_null :products, :code, false
  end
end
