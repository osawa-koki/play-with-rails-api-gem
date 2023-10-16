# frozen_string_literal: true

module Api
  module V1
    # MailsController
    class MailsController < ApplicationController
      def create
        WelcomeMailer.with(mail_params).hello.deliver_now
      rescue StandardError => e
        render json: { error: e.message }, status: :unprocessable_entity
      end

      private

      def mail_params
        params.permit(:to, :cc, :bcc, :subject, :message)
      end
    end
  end
end
