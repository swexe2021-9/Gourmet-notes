def change
    create_table :categories do |t|
      t.integer :store_id
      t.string :name

      t.timestamps
    end 
end
