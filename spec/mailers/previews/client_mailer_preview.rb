# Preview all emails at https://localhost:3000/rails/mailers/client_mailer
class ClientMailerPreview < ActionMailer::Preview
  def artist_request_email
    ClientMailer.artist_request_email(Order.last)
  end
end
