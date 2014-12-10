class UserAccountsController < ApplicationController

  def new
    @user = UserAccount.new
  end

  def create
    @user = UserAccount.new(user_accounts_params)
    if @user.save
      redirect_to index_path, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def account_page
    #@list_of_created_drinks = 
    #@list_of_personal_favorites = 
  end

  def reset_password
    if current_user.password_hash == BCrypt::Engine.hash_secret(params[:current_password], current_user.password_salt)
      if params[:new_password] == params[:password_confirm]
        password_hash = BCrypt::Engine.hash_secret(params[:new_password], current_user.password_salt)
        current_user.update_attributes(password_hash: password_hash)
        redirect_to account_page_path(current_user.id)
      else
        redirect_to account_page_path(current_user.id)
      end
    else
      redirect_to account_page_path(current_user.id)
    end
  end

  private

  def user_accounts_params
    params.require(:user_account).permit(:first_name, :last_name, :email, :user_name, :password)
  end

end