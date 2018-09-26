class HomeController < ApplicationController
  def index
    render :layout => 'layouts/index'
    @lastfm = Lastfm.new(ENV["LASTFM_KEY"], ENV["LASTFM_SECRET"])
    @topartists = @lastfm.chart.get_top_artists()
    puts "========"
    puts @topartists[0]["name"]
    puts @topartists[1]["name"]
    puts @topartists[2]["name"]
    puts "========"
    end
end
