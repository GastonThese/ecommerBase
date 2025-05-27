class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products, id: :uuid do |t|
      t.float :price
      t.string :name
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
