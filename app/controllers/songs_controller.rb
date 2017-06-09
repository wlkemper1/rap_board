class SongsController < ApplicationController

  def my_likes
    @songs = current_user.songs
  end


  def index
    @songs = Song.all
    render("songs/index.html.erb")
  end

  def show
    @song = Song.find(params[:id])
    @rapper = Rapper.new
    render("songs/show.html.erb")
  end

  def new
    @song = Song.new

    render("songs/new.html.erb")
  end

  def create
    @song = Song.new

    @song.rapper_id = params[:rapper_id]
    @song.producer_id = params[:producer_id]
    @song.audio_link = params[:audio_link]
    @song.year = params[:year]
    @song.title = params[:title]

    save_status = @song.save

    if save_status == true
      redirect_to("/songs/#{@song.id}", :notice => "Song created successfully.")
    else
      render("songs/new.html.erb")
    end
  end

  def edit
    @song = Song.find(params[:id])

    render("songs/edit.html.erb")
  end

  def update
    @song = Song.find(params[:id])

    @song.rapper_id = params[:rapper_id]
    @song.producer_id = params[:producer_id]
    @song.audio_link = params[:audio_link]
    @song.year = params[:year]
    @song.title = params[:title]

    save_status = @song.save

    if save_status == true
      redirect_to("/songs/#{@song.id}", :notice => "Song updated successfully.")
    else
      render("songs/edit.html.erb")
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    if URI(request.referer).path == "/songs/#{@song.id}"
      redirect_to("/", :notice => "Song deleted.")
    else
      redirect_to(:back, :notice => "Song deleted.")
    end
  end
end
