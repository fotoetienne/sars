class RsvpController < ApplicationController
  def new
    @rsvp = Rsvp.new
    @response_options = ['coming','not coming','probably coming','probably not coming']
  end

  def create
    @rsvp = Rsvp.new(params[:rsvp])
    
    if @rsvp.valid?
      RsvpMailer.new_rsvp(@rsvp).deliver
      redirect_to(root_path, :notice => "Your response been sent. Thanks!")
    else
      flash.now.alert = "Oops! There was a problem sending the rsvp."
      render :new
    end
  end
end
