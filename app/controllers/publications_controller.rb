class PublicationsController < ApplicationController
  # GET /publications/1
  def show
    @publication = Publication.find(params[:id])
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
    @publication = Publication.find(params[:id])
  end

  # POST /publications
  def create
    @publication = Publication.new(params[:publication])

    if @publication.save
      redirect_to(@publication, :notice => 'Publication was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /publications/1
  def update
    @publication = Publication.find(params[:id])

    if @publication.update_attributes(params[:publication])
      redirect_to(@publication, :notice => 'Publication was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /publications/1
  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy

    redirect_to(publications_url)
  end

  def manage

  end

  def ajax_destination_type_change

  end
end
