class ApplicationController < ActionController::Base
  before_action :set_title

  def set_title
    @title = params[:action]
  end
end
