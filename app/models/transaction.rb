class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :expense_type  

  validates_presence_of   :name, :transaction_type, :date, :amount
end
