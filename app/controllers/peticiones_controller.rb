class PeticionesController < ApplicationController
  before_action :set_peticione, only: [:show, :edit, :update, :destroy, :cancelpeticione]

  respond_to :html

  def index
    @peticiones = Peticione.all
    respond_with(@peticiones)
  end

  def show
    @ubicacion = Peticione.find_by_id(params[:id])
    respond_with(@peticione)
  end

  def new
    @peticione = Peticione.new
    respond_with(@peticione)
  end

  def create
    @peticione = Peticione.new(peticione_params)
    @peticione.save
    redirect_to '/'
  end

  def edit
    @peticiones = Peticione.find_by_id(params[:id])
  end
  
  def update
    @peticione.update(peticione_params)
    redirect_to peticiones_path
  end

  def destroy
    @peticione.destroy
    respond_with(@peticione)
  end

  def UpdatePeticionID(id,boolean,id_usuario)
    @update = Peticione.find_by_id(id)
    @update.status_peticion = boolean
    @update.user_id = id_usuario
    @update.save
  end

  def listpeticions
    @peticione = Peticione.all
  end

  private
    def set_peticione
      @peticione = Peticione.find(params[:id])
    end

    def peticione_params
      params.require(:peticione).permit(:latitud, :longitud, :cliente_id, :id_cliente, :peticiones, :descripcion_peticion, :coordenada_peticion, :date_peticion, :status_peticion, :id_usuario, :date_respuesta, :descripcion_respuesta, :status_respuesta)
    end
end
