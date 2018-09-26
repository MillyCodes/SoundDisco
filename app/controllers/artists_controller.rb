#app/controllers/artists_controller.rb
class ArtistsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV["SPOTIFY_KEY"], ENV["SPOTIFY_SECRET"])
  Yt.configure do |config|
    config.api_key = ENV["YOUTUBE_KEY"]
  end
  
  def index
    if !params[:artist_name].empty?
      lastfm = Lastfm.new(ENV["LASTFM_KEY"], ENV["LASTFM_SECRET"])
      @artist = RSpotify::Artist.search(params[:artist_name]).first
      @artistlastfm = lastfm.artist.get_info(artist: params[:artist_name], autocorrect: 1)   
      @getsimilar = @artistlastfm["similar"]["artist"]
      @artistbio = @artistlastfm["bio"]["content"]
      @artisttags = @artistlastfm["tags"]["tag"]
      @videos = Yt::Collections::Videos.new
      @tracks = @artist.top_tracks(:US)[0..4]
      @defaulttrack = @artist.top_tracks(:US)[0].name
      @videoDefault = @videos.where(q: "official music video for #{@artist.name} #{@defaulttrack}", order: 'relevance').first.id
    else
      redirect_to root_path
    end 
  end

  def show
    @artist = RSpotify::Artist.find(params[:id])
    @tracks = @artist.top_tracks(:US)[0..4]
    track = params[:track].to_i
    @videos = Yt::Collections::Videos.new
    @videoId = @videos.where(q: "music video for #{@artist.name} #{@tracks[track].name}", order: 'relevance').first.id

    end
end
