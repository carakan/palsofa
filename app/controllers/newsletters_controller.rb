class NewslettersController < ApplicationController
  def create
    @newsletter = Newsletter.new(params[:newsletter])
    if @newsletter.save
      flash[:notice] = "Ya eres parte del Newsletter de Palsofá."
      redirect_to root_url
    else
      redirect_to root_url
    end
  end
end