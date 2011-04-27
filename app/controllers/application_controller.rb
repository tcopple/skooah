class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def initialize
    super
    @stylesheets = ['960','reset','text','global','forms']
  end
  
  def add_stylesheet(stylesheet)
    @stylesheets << stylesheet
    @stylesheets.uniq!
  end

  def current_author
    if user_signed_in?
      Author.where("user_id = ?", current_user.id).first
    end
  end
end
