class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = current_user.songs.create(song_params)
    if @song.save
      redirect_to @song
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def show
    fetcher = Lyricfy::Fetcher.new
    @song = fetcher.search 'Leon Bridges', 'Better Man'
  end

  private

  def song_params
    params.require(:song).permit(:artist, :title)
  end

end
