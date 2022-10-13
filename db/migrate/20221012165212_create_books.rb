class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :stock
      t.integer :quota

      t.timestamps
    end
  end
end
