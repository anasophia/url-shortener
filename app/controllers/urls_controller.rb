class UrlsController < ApplicationController
  
  def create
    @shortened_url = Url.make_shortened_url(url_params[:address])
    redirect_to @shortened_url
  end

private 
  def url_params
    params.require(:url).permit(:address)
  end

end