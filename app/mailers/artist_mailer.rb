class ArtistMailer < ApplicationMailer
  	default from: 'sales@unlimitedskiesdrone.com'
	def join_team_email(artist)
      @artist = artist
      email_with_name = %("#{@artist.name}" <#{@artist.email}>)
      mail(to: email_with_name, subject: 'Welcome to the Team! www.unlimitedskiesdrone.com')
    end

end
