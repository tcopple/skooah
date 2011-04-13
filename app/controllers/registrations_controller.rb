class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource

    if resource.save
      sign_in(resource_name, resource)
      
      if resource.is_author
        @author = Author.new({:user_id => resource.id})
        
        if(@author.save)
          redirect_to edit_author_path(@author)
        else
          respond_with resource, :location => redirect_location(resource_name, resource)
        end
      else
        respond_with resource, :location => redirect_location(resource_name, resource)
      end
    else
      clean_up_passwords(resource)
      respond_with_navigational(resource) { render_with_scope :new }
    end
  end
end
