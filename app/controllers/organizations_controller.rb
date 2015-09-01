class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show

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

  end

  def update

  end

  def delete

  end

  private

  def organization_params
    params.require(:organization).permit(:name, :url)
  end

end
