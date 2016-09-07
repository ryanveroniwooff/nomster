class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
  	@place = comment.place
  	@place_owner = @place.user

  	mail(to: @place.user.email, subject: "Thanks for commenting on #{@place.name}!")
  end

end
