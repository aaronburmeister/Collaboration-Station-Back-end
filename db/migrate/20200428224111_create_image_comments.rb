class CreateImageComments < ActiveRecord::Migration[6.0]
  def change
    create_table :image_comments do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
