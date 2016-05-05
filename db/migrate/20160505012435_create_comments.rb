class CreateComments < ActiveRecord::Migration
  #drop_table :comments
  def change
    create_table :comments do |t|
      t.integer :licture_id
      t.text :body

      t.timestamps null: false
    end
    add_index :comments, :licture_id
  end
end
