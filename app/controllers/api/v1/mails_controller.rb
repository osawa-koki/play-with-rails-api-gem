# frozen_string_literal: true

module Api
  module V1
    # MailsController
    class MailsController < ApplicationController
      def create
        WelcomeMailer.with(mail_params).hello.deliver_now
        render json: { message: 'Email sent successfully' }, status: :ok
      end

      private

      def mail_params
        params.permit(:to, :cc, :bcc, :subject, :message)
      end
    end
  end
end
