class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    render :welcome
  end

  def about
    render :about
  end

  def contest
    #render :contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if :magic_word == "halls"
      redirect_to '/secrets'
    else
      flash[:alert]= "Sorry, you're not authorized to visit that page!"
      redirect_to '/'
    end
  end
end
