class RappersController < ApplicationController
  def index
    @rappers = Rapper.all

    render("rappers/index.html.erb")
  end

  def show
    @rapper = Rapper.find(params[:id])

    render("rappers/show.html.erb")
  end

  def new
    @rapper = Rapper.new

    render("rappers/new.html.erb")
  end

  def create
    @rapper = Rapper.new

    @rapper.name = params[:name]
    @rapper.picture = params[:picture]
    @rapper.city = params[:city]

    save_status = @rapper.save

    if save_status == true
      redirect_to("/rappers/#{@rapper.id}", :notice => "Rapper created successfully.")
    else
      render("rappers/new.html.erb")
    end
  end

  def edit
    @rapper = Rapper.find(params[:id])

    render("rappers/edit.html.erb")
  end

  def update
    @rapper = Rapper.find(params[:id])

    @rapper.name = params[:name]
    @rapper.picture = params[:picture]
    @rapper.city = params[:city]

    save_status = @rapper.save

    if save_status == true
      redirect_to("/rappers/#{@rapper.id}", :notice => "Rapper updated successfully.")
    else
      render("rappers/edit.html.erb")
    end
  end

  def destroy
    @rapper = Rapper.find(params[:id])

    @rapper.destroy

    if URI(request.referer).path == "/rappers/#{@rapper.id}"
      redirect_to("/", :notice => "Rapper deleted.")
    else
      redirect_to(:back, :notice => "Rapper deleted.")
    end
  end
end
