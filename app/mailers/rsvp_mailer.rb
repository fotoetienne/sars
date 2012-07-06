class RsvpMailer < ActionMailer::Base
  default from: "mail@stephenandrebeccaspalding.com"
  default :to => "stephen.spalding@gmail.com"

  def new_rsvp(rsvp)
    @rsvp = rsvp
    mail(:subject => "[rsvp] #{rsvp.name}")
  end
end
