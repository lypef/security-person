class RendersController < ApplicationController
  
  respond_to :html


	def statusupdate
    	@usuarios = User.find_by_id (current_user.id)
    	@usuarios.status = params[:statususer]
    	@usuarios.save
	end

end
