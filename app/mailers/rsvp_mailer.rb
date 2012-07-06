class RsvpMailer < ActionMailer::Base
  default from: "rsvp@stephenandrebeccaspalding.com"
  default :to => "stephen.spalding@gmail.com,bekita24@gmail.com"

  def new_rsvp(rsvp)
    @rsvp = rsvp
    mail(:subject => "[rsvp] #{rsvp.name} is #{rsvp.response}")
  end
end
