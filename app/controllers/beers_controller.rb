class BeersController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def delete
  end
end
