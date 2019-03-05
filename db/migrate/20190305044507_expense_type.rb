class ExpenseType < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_types do |t|
      t.string :type
      t.string :description

      t.timestamps
    end
    add_reference :users, :role, index: true
  end
end
