class FloatMailer < ApplicationMailer
  default from: 'hamayou.bus@gmail.com'

  def ups_and_downs
    mail(to: 'hamayou.bus@gmail.com', subject: 'Welcome to floaton!')
  end
end
