class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :type, index: true
      t.references :user, index: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :posts, :types
    add_foreign_key :posts, :users
  end
end