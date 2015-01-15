class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :sidebar_values

  def sidebar_values
    @food_preferences ||= FoodPreference.all
    @food_types ||= FoodType.all
    @cuisines ||= Cuisine.all
  end
end
