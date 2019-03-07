class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :expense_type  

  validates_presence_of   :name, :type, :date, :amount
end
