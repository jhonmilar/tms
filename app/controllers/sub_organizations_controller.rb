class SubOrganizationsController < ApplicationController

  before_action :find_organization

  def index
    @sub_organizations = @organization.sub_organizations if @organization
  end

  def new
    @organization.sub_organizations.build
  end

  def create
    @organization.update_attributes(sub_organization_params)
    redirect_to organization_sub_organizations_path(@organization)
  end

  private

  def sub_organization_params
    params.require(:organization).permit(sub_organizations_attributes: [ :id, :domain_name, :_destroy ])
  end

  def find_organization
    @organization = Organization.where("id =?", params[:organization_id]).first
  end
end