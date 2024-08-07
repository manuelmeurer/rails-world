class NotificationsMailer < ApplicationMailer
  default from: "notifications@railsworld.com"
  def session_notification
    @user = params[:user]
    @message = params[:message]
    @session = params[:session]
    @speaker = @session.speakers.first
    mail(to: @user.email, subject: default_i18n_subject)
  end
end
