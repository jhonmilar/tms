class CabRoutesController < ApplicationController

  before_action :find_sub_organization

  def index
    @routes = @sub_org.routes if @sub_org
  end

  def new
    @sub_org.routes.build
  end

  def create
    @sub_org.update_attributes(route_params)
    redirect_to  organization_sub_organization_cab_routes_path(@sub_org.organization, @sub_org)
  end

  private

  def route_params
    params.require(:sub_organization).permit(routes_attributes: [ :id, :name, :_destroy ])
  end

  def find_sub_organization
    @sub_org = SubOrganization.where("id =?", params[:sub_organization_id]).first
  end
end
