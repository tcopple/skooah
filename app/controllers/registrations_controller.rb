class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    @author = Author.new({:user_id => resource.id})

    if(@author.save)
      return edit_author_path(@author)
    else
      return new_user_registration_path
    end
  end
end

