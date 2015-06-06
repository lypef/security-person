class HomeController < ApplicationController
  
  def index
    @peticion = Peticione.all
  end

  def new
    @peticion = Peticione.create(id_cliente: params[:id_cliente])
    @peticion.save
  end

  def edit
    @peticion = Peticione.search_by_id(params[:id])
    @Peticion.descripcion_peticion = params[:descripcion]
    @peticion.save
  end

  def show
    @peticion = Peticione.all
  end
  
  private
  def post_params
    params.require(:peticion).permit(:id_cliente, :descripcion_peticion, :peticiones, :descripcion_peticion, :coordenada_peticion, :date_peticion, :status_peticion, :id_usuario, :date_respuesta, :descripcion_respuesta, :status_respuesta)
  end
end
