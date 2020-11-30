class HomeController < ApplicationController

	def index
		#render '/home1/index'
		@nombre = 'José Alejandro'
		#@nombre = current_user.profile.nombre.blank? ? current_user.email : current_user.profile.nombre
	end

end