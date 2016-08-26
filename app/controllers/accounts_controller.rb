class AccountsController < ApplicationController
  def show
    @account = current_user.account
    flash[:success] = "Welcome to your account"
  end

  def edit
    @account = current_user.account
  end

  def update
    @account = current_user.account
    if @account.update(total: params[:total])
      flash[:success] = "Your account has been updated"
      redirect_to @account_path(@account)
    else
      flash[:error] = "Total reqired"
      render :edit
  end

end
