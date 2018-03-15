class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    redirect_to login_path unless logged_in?
  end

end
