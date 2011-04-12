class AuthorsController < ApplicationController
  # GET /authors
  def index
    @authors = Author.order("pen_name")
  end

  # GET /authors/1
  def show
    add_stylesheet('authors/show.css')
    
    @author = Author.find(params[:id])
  end

  # GET /authors/1/edit
  def edit
    @author = Author.find(params[:id])
  end

  # POST /authors
  def create
    @author = Author.new(params[:author])
  end

  # PUT /authors/1
  def update
    @author = Author.find(params[:id])

    if @author.update_attributes(params[:author])
      redirect_to(@author, :notice => 'Author was successfully updated.')
    else
      render :action => "edit"
    end
  end
end
