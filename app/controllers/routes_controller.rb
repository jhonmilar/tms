class RoutesController < ApplicationController

  def index
    @routes = Route.where("sub_organization_id = ?", current_sub_organization)
  end

  def create

  end
end
