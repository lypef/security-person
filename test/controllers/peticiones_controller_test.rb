require 'test_helper'

class PeticionesControllerTest < ActionController::TestCase
  setup do
    @peticione = peticiones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peticiones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peticione" do
    assert_difference('Peticione.count') do
      post :create, peticione: { : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., coordenada_peticion: @peticione.coordenada_peticion, date_peticion: @peticione.date_peticion, date_respuesta: @peticione.date_respuesta, descripcion_peticion: @peticione.descripcion_peticion, descripcion_respuesta: @peticione.descripcion_respuesta, id_cliente: @peticione.id_cliente, id_usuario: @peticione.id_usuario, status_peticion: @peticione.status_peticion, status_respuesta: @peticione.status_respuesta, tipo: @peticione.tipo }
    end

    assert_redirected_to peticione_path(assigns(:peticione))
  end

  test "should show peticione" do
    get :show, id: @peticione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peticione
    assert_response :success
  end

  test "should update peticione" do
    patch :update, id: @peticione, peticione: { : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., : @peticione., coordenada_peticion: @peticione.coordenada_peticion, date_peticion: @peticione.date_peticion, date_respuesta: @peticione.date_respuesta, descripcion_peticion: @peticione.descripcion_peticion, descripcion_respuesta: @peticione.descripcion_respuesta, id_cliente: @peticione.id_cliente, id_usuario: @peticione.id_usuario, status_peticion: @peticione.status_peticion, status_respuesta: @peticione.status_respuesta, tipo: @peticione.tipo }
    assert_redirected_to peticione_path(assigns(:peticione))
  end

  test "should destroy peticione" do
    assert_difference('Peticione.count', -1) do
      delete :destroy, id: @peticione
    end

    assert_redirected_to peticiones_path
  end
end
