class CompaniesSessionController < ApplicationController
  def new
  end

  def create
    company = Company.where(:name => params[:name]).first
    if company.present? && company.authenticate(params[:password])
      session[:company_id] = company.id
      redirect_to company_path(company.id)
    else
      flash[:notice] = "Incorrect Login: Try Again."
      redirect_to company_login_path
    end
  end

  def destroy
    session[:company_id] = nil

    redirect_to root_path
  end
end