class SettingsController < ApplicationController
	def index
		@peticione = Peticione.all
	end

	def listpeticions
		@peticione = Peticione.all
	end
end