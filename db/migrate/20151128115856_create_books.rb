class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.float :price
      t.text :description
      t.string :publisher
      t.string :picture
      t.string :isbn
      t.date :pub_date

      t.timestamps null: false
    end
  end
end
