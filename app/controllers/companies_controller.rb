class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new params[:company]
    if @company.save
      session[:company_id] = @company.id
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    @company = @company_authenticated

    render 'edit'
  end

  def update
    company = Company.find(params[:id])
    company.update_attributes params[:company]

    redirect_to company_path
  end

end