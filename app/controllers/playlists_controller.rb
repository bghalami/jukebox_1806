class PlaylistsController < ApplicationController

  def new
    @playlist = Playlist.new
  end

  def create
    playlist = Playlist.new(playlist_params)
    if playlist.save
      redirect_to playlists_path
    else
      render :new
    end
  end

  def index
    @playlists = Playlist.all
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end

end
