class HomeController < ApplicationController
      

  def index
      @lastfm = Lastfm.new(ENV["LASTFM_KEY"], ENV["LASTFM_SECRET"])
      
      @recentartists = @lastfm.chart.get_top_artists.sample(3)

      @topartists = @lastfm.chart.get_top_artists.sample(6)
      render :layout => 'index'
    end
end
