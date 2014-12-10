class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :like_drink
  helper_method :unlike_drink
  helper_method :get_liked_drink

  private

  def current_user
    @current_user ||= UserAccount.where("id = ?",session[:user_id]).first if session[:user_id]
  end

  def like_drink(user_id, drink_id)
    liked_drink = get_liked_drink(user_id, drink_id)
    if liked_drink.present? && !liked_drink.first.like
      liked_drink.first.update_attributes(like: true)
    else
      UserLikeAssociation.create(user_account_id: user_id, drink_id: drink_id, like: true)
    end
  end

  def unlike_drink(user_id, drink_id)
    liked_drink = get_liked_drink(user_id, drink_id)
    if liked_drink.present? && liked_drink.first.like
      liked_drink.first.update_attributes(like: false)
    else
      UserLikeAssociation.create(user_account_id: user_id, drink_id: drink_id, like: false)
    end
  end

  def get_liked_drink(user_id, drink_id)
    UserLikeAssociation.where("user_account_id = ? and drink_id = ?", user_id, drink_id)
  end
end
