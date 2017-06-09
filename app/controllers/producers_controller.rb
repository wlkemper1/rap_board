class ProducersController < ApplicationController
  def index
    @producers = Producer.all

    render("producers/index.html.erb")
  end

  def show
    @producer = Producer.find(params[:id])

    render("producers/show.html.erb")
  end

  def new
    @producer = Producer.new

    render("producers/new.html.erb")
  end

  def create
    @producer = Producer.new

    @producer.picture = params[:picture]
    @producer.name = params[:name]
    @producer.city = params[:city]

    save_status = @producer.save

    if save_status == true
      redirect_to("/producers/#{@producer.id}", :notice => "Producer created successfully.")
    else
      render("producers/new.html.erb")
    end
  end

  def edit
    @producer = Producer.find(params[:id])

    render("producers/edit.html.erb")
  end

  def update
    @producer = Producer.find(params[:id])

    @producer.picture = params[:picture]
    @producer.name = params[:name]
    @producer.city = params[:city]

    save_status = @producer.save

    if save_status == true
      redirect_to("/producers/#{@producer.id}", :notice => "Producer updated successfully.")
    else
      render("producers/edit.html.erb")
    end
  end

  def destroy
    @producer = Producer.find(params[:id])

    @producer.destroy

    if URI(request.referer).path == "/producers/#{@producer.id}"
      redirect_to("/", :notice => "Producer deleted.")
    else
      redirect_to(:back, :notice => "Producer deleted.")
    end
  end
end
