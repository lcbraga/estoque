require 'test_helper'

class PagamentosControllerTest < ActionController::TestCase
  setup do
    @pagamento = pagamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pagamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pagamento" do
    assert_difference('Pagamento.count') do
      post :create, :pagamento => @pagamento.attributes
    end

    assert_redirected_to pagamento_path(assigns(:pagamento))
  end

  test "should show pagamento" do
    get :show, :id => @pagamento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pagamento.to_param
    assert_response :success
  end

  test "should update pagamento" do
    put :update, :id => @pagamento.to_param, :pagamento => @pagamento.attributes
    assert_redirected_to pagamento_path(assigns(:pagamento))
  end

  test "should destroy pagamento" do
    assert_difference('Pagamento.count', -1) do
      delete :destroy, :id => @pagamento.to_param
    end

    assert_redirected_to pagamentos_path
  end
end
