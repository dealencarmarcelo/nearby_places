class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :commentable, polymorphic: true, index: true
      t.string :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
