class HomeController < ApplicationController
      

  def index
      @lastfm = Lastfm.new(ENV["LASTFM_KEY"], ENV["LASTFM_SECRET"])
      
      @recentartists = @lastfm.chart.get_top_artists[17..19]
      @topartists = @lastfm.chart.get_top_artists[0..5]
      render :layout => 'index'
    end
end
