class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.text :notes
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
