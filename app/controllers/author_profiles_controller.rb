class AuthorProfilesController < ApplicationController

  respond_to :html

  def show
    @author = AuthorProfile.find(params[:id])
    
    respond_with(@author)
  end

  def index
    @authors = AuthorProfile.find(:all)

    respond_with(@authors)
  end
end
