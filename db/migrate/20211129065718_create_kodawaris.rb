class CreateKodawaris < ActiveRecord::Migration[5.2]
  def change
    create_table :kodawaris do |t|
      t.string :content
      t.integer :store_id

      t.timestamps
    end
  end
end
