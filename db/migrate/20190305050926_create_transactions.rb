class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :amount
      t.string :type #credit and Debit
      t.string :description
    end
    add_reference :transactions, :user, index: true
    add_reference :transactions, :expense_type, index: true
  end
end
