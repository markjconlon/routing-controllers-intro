class PagesController < ApplicationController
  def welcome
    render :welcome
  end

  def about
    render :about
  end

  def contest
    render :contest
  end
end
