class DashboardController < ApplicationController

	def index
		@list_of_drinks = Drink.all
	end

end