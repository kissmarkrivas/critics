class CompaniesController < ApplicationController
  #GET /companies
  def index
    companies = Company.all
    render json: companies
  end
  #POST /companies
  def create
    new_company = Company.create(company_params)
    
    if new_company.save
      render json: new_company
    else
      render json: new_company.errors.full_messages
    end
  end

  def company_params
    params.require(:company).permit(:name, :description, :country, :start_date)
  end
end
