class LeadsController < ApplicationController
  def index
  	@leads = Lead.all
  end

  def show
  	@lead = Lead.find(params[:id])
  end

  def edit
  	@lead = Lead.find(params[:id])
  end

  def new
  	@lead = Lead.new
    @lead.build_address

  end

  def create
  	@lead = Lead.new(params[:lead])
    @lead.save!
    redirect_to leads_path, notice: "Lead created"

  rescue
    render :new
  end

  def update
  	@lead = Lead.find(params[:id])
  end

  def destroy
  	@lead = Lead.find(params[:id])
  	@lead.destroy
  end
  
end
