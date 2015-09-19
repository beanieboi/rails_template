class Application::DashboardsController < ApplicationController
  def show
    authorize :dashboard, :show?
  end
end
