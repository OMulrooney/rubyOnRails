class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.float :price
      t.integer :book_id
      t.string :publisher
      t.text :description
      t.float :number

      t.timestamps
    end
  end
end
