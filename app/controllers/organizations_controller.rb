class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = find_organisation(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def edit
    @organization = find_organisation(params[:id])
  end

  def update
    find_organisation(params[:id]).tap {|organisation| organisation.update!(organization_params)}
    redirect_to organizations_path
  end

  def destroy
    find_organisation(params[:id]).tap {|organisation| organisation.destroy }
    redirect_to organizations_path
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :url)
  end

  def find_organisation(id)
    Organization.find(id)
  end
end
