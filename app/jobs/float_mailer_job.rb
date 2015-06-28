class FloatMailerJob < ActiveJob::Base
  queue_as :email

  def perform
    FloatMailer.ups_and_downs.deliver_now
  end
end
