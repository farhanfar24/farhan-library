class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :number
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.date :return_date

      t.timestamps
    end
  end
end
