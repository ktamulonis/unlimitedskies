# Preview all emails at http://localhost:3000/rails/mailers/client_mailer
class ClientMailerPreview < ActionMailer::Preview
  def artist_request_email
    ClientMailer.artist_request_email(Order.last)
  end
end
