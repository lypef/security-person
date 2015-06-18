module Api
	class PeticionesController < ApplicationController
	
	respond_to :json

	def index
        respond_with Peticione.all
      end

      def show
      	respond_with Peticione.find_by_id(params[:id])
      end

      def create
      	respond_with Peticione.create(params[:peticione])
      end

      def update
      	respond_with Peticione.update(params[:id],params[:peticione])
      end

      def destroy
      	respond_with Peticione.destory(params[:id])
      end

	end	
end