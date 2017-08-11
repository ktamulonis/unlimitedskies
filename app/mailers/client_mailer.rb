class ClientMailer < ApplicationMailer
	default from: 'sales@unlimitedskiesdrone.com'
	def artist_request_email(order)
      @order = order
      email_with_name = %("#{@order.name}" <#{@order.email}>)
      mail(to: email_with_name, subject: 'An Aerial Artist is on the way from www.unlimitedskiesdrone.com')
  end
end
