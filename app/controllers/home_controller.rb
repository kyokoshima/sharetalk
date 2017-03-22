class HomeController < ApplicationController
  before_action :authenticate_user!, only: :show
  layout 'no_sidebar'
  def index

  end

  def show

  end
end
