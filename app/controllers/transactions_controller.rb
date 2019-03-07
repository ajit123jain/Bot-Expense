class TransactionsController < ApplicationController
  before_action :authorize_user
  
  def index
    transactions = Transaction.where(user_id:current_user.id)
  end

  def new
    @transaction = Transaction.new
    respond_to do |format|
      format.js { }
    end
  end
  
  def create
    @transaction = Transaction.new(transaction_params)
    respond_to do |format|
      if @transaction.save
       format.js { } 
      else
        format.js { }
      end
    end
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
