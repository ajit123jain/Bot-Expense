class TransactionsController < ApplicationController
  
  def index
    
  end

  def new
  end
  
  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy

  end

  private
  
  def transaction_params 
    params.permit(:id,:name,:amount,:type,:description,:user_id,:expense_type_id)
  end
  
  def set_transaction
    Transaction.find_by(params[:id])
  end
end
