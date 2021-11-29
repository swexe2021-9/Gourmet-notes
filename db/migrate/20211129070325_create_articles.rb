class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.integer :store_id
      t.string :intro
      t.string :kodawari
      t.string :mood
      t.string :review

      t.timestamps
    end
  end
end
