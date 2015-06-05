class WelcomeController < ApplicationController
	def show
		@songs = MySoundCloud.songs
	end
end