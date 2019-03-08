class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :amount
      t.string :transaction_type #credit and Debit
      t.string :description
      t.date :date
    end
    add_reference :transactions, :user, index: true
    add_reference :transactions, :expense_type, index: true
  end
end
