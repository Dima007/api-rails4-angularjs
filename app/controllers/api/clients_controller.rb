class Api::ClientsController < ApplicationController
  before_action :check_owner, only: [:show, :update, :destroy]

  def index
    render json: current_user.clients
  end

  def show
    render json: client_list
  end

  def create
    list = current_user.clients.create!(safe_params)
    render json: list
  end

  def update
    client_list.update_attributes(safe_params)
    render nothing: true
  end

  def destroy
    client_list.destroy
    render nothing: true
  end
  
  private

  def check_owner
    permission_denied if current_user != client.owner
  end

  def client_list
    @client ||= Client.find(params[:id])
  end

  def safe_params
    params.require(:list).permit(:name, :surname)
  end
end