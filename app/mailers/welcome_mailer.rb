# frozen_string_literal: true

# WelcomeMailer
class WelcomeMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def hello
    to = params[:to]
    cc = params[:cc]
    bcc = params[:bcc]
    subject = params[:subject]
    @message = params[:message]
    mail(to:, cc:, bcc:, subject:)
  end
end
