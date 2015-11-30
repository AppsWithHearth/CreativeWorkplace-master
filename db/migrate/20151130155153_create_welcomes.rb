class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :body_text
      t.string :header_text

      t.timestamps null: false
    end
  end
end
