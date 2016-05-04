class CreateLictures < ActiveRecord::Migration
  def change
    create_table :lictures do |t|
      t.string :content
      t.string :attachment
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
