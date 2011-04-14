class AuthorsController < ApplicationController
  def index
    @authors = Author.order("pen_name")
  end

  def show
    add_stylesheet('authors/show.css')
    
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update_attributes(params[:author])
      redirect_to(@author, :notice => 'Author was successfully updated.')
    else
      render :action => "edit"
    end
  end
end
