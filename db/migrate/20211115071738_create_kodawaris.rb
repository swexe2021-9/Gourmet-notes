class CreateKodawaris < ActiveRecord::Migration[5.2]
  def change
    create_table :kodawaris do |t|
      t.string :name

      t.timestamps
    end
  end
end
