class TransactionsController < ApplicationController
  before_action :authorize_user
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.includes(:expense_type).where(user_id:current_user.id)
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
        @transactions = Transaction.includes(:expense_type).where(user_id:current_user.id)
        format.js { } 
      else
        format.js { }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        @transactions = Transaction.includes(:expense_type).where(user_id:current_user.id)
        format.js { } 
      else
        format.js { render :edit }
      end
    end
  end

  def delete
    @transaction =  Transaction.find(params[:transaction_id])
  end

  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
    end
  end

  private
  
  def transaction_params 
    params.require(:transaction).permit(:id,:name,:amount,:transaction_type,:description,:user_id,:expense_type_id,:date)
  end
  
  def set_transaction
    @transaction =  Transaction.find(params[:id])
  end
end
