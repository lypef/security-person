module Api
	class ClientesController < ApplicationController
		respond_to :json

		def index
			respond_with Cliente.all
		end

		def show
			respond_with Cliente.find_by_id(params[:id])
		end

		def create
			respond_with Cliente.create(params[:cliente])
		end

		def update
			respond_with Cliente.update(params[:cliente])
		end

		def destroy
			respond_with Cliente.destroy(params[:id])
		end

	end
end