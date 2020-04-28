class CreateRequestComments < ActiveRecord::Migration[6.0]
  def change
    create_table :request_comments do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
