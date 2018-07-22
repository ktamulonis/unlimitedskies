# Preview all emails at https://localhost:3000/rails/mailers/artist_mailer
class ArtistMailerPreview < ActionMailer::Preview
  def join_team_email
    ArtistMailer.join_team_email(Artist.last)
  end
end
