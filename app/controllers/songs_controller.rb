class SongsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    fetcher = Lyricfy::Fetcher.new
    @lyrics = fetcher.search("#{@song.artist}", "#{@song.title}")
    @lyrics = @lyrics.body("<br>")
    @song.lyrics = @lyrics
    if @song.save
      redirect_to edit_song_path(@song)
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update_attributes(song_params)

		
		nouns = @song.nouns.split
		adjectives = @song.adjectives.split
		people = @song.people.split
		verbs = @song.verbs.split

    @song.swapper(@song.lyrics, "#{ENV["nouns"]}".split, nouns) 
    @song.swapper(@song.lyrics, "#{ENV["adjectives"]}".split, adjectives) 
    @song.swapper(@song.lyrics, "#{ENV["people"]}".split, people) 
    @song.swapper(@song.lyrics, "#{ENV["verbs"]}".split, verbs) 

    if @song.save
      redirect_to @song
    else
      render :edit, :status => :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit(:artist, :title, :lyrics, :nouns, :adjectives, :people, :verbs)
  end

end
