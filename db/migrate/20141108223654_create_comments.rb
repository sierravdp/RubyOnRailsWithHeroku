class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true

      t.timestamps
    end
    add_index :comments, :article_id
  end
end
