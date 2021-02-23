class CreateFremars < ActiveRecord::Migration[6.0]
  def change
    create_table :fremars do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.string :seller, null: false
      t.string :email, null: false
      t.text :image_url, null: false

      t.timestamps
    end
  end
end
# コントローラーから