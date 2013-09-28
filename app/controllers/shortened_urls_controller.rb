class ShortenedUrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def show
    @shortened_url = ShortenedUrl.find(params[:id])
    @address = "#{root_url}#{@shortened_url.address}"
    @visits = @shortened_url.visits
  end
end