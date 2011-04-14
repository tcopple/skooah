class PublicationsController < ApplicationController
  
  respond_to :html, :js

  def show
    @publication = Publication.find(params[:id])
    
    respond_with(@publication)
  end

  def new
    @publication = Publication.new

  end

  def create

  end

  def ajax_destination_type_change

  end
end
