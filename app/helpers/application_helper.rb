module ApplicationHelper
  def current_author
    if user_signed_in?
      Author.where("user_id = ?", current_user.id).first
    end
  end
end
