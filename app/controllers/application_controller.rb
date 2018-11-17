class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :set_title, :register_visitor
  before_action :first_time_visit, unless: -> { cookies[:visitor_id] }

  def register_visitor
    if cookies[:visitor_id].present?
      @visitor = Visitor.find_by(id: cookies.signed_or_encrypted[Rails.application.secrets.visitor_cookie_name])

    else
      user_id = current_user.nil? ? nil : current_user.id

      @visitor = Visitor.create!(ip: request.remote_ip,
                      user_agent: request.user_agent,
                      start_url: request.path,
                      referrer: request.referrer,
                      visitor_id: cookies[:visitor_id],
                      user_id: user_id,
                      name: Faker::StarWars.character)
      cookies.signed_or_encrypted.permanent[Rails.application.secrets.visitor_cookie_name] = @visitor.id

    end
  end

  def first_time_visit
    cookies.permanent[:visitor_id] = SecureRandom.hex(8)
    @first_visit = true
  end

  def set_title
    @title = params[:action]
  end
end