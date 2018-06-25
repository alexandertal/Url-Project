class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.short_url = SecureRandom.hex(6)   
    @url.save
    redirect_to urls_path
  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy

  redirect_to urls_path
  end

  private
  def url_params
    params.require(:url).permit(:name)
  end

end
