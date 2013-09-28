class VisitsController < ApplicationController
  
  def show
    shortened_url = ShortenedUrl.where(address: params[:short_address]).take
    shortened_url.visits.create
    redirect_to shortened_url.url.address
  end
end