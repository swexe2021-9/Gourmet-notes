class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :message
      t.integer :article_id

      t.timestamps
    end
  end
end
