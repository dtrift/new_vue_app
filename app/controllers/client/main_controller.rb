class Client::MainController < ApplicationController
  before_action :authenticate_client!, only: :index

  def index; end
end
