class SicCodesController < ApplicationController
  # GET /sic_codes
  # GET /sic_codes.json
  def index
    @sic_codes = SicCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sic_codes }
    end
  end

  # GET /sic_codes/1
  # GET /sic_codes/1.json
  def show
    @sic_code = SicCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sic_code }
    end
  end

  # GET /sic_codes/new
  # GET /sic_codes/new.json
  def new
    @sic_code = SicCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sic_code }
    end
  end

  # GET /sic_codes/1/edit
  def edit
    @sic_code = SicCode.find(params[:id])
  end

  # POST /sic_codes
  # POST /sic_codes.json
  def create
    @sic_code = SicCode.new(params[:sic_code])

    respond_to do |format|
      if @sic_code.save
        format.html { redirect_to @sic_code, notice: 'Sic code was successfully created.' }
        format.json { render json: @sic_code, status: :created, location: @sic_code }
      else
        format.html { render action: "new" }
        format.json { render json: @sic_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sic_codes/1
  # PUT /sic_codes/1.json
  def update
    @sic_code = SicCode.find(params[:id])

    respond_to do |format|
      if @sic_code.update_attributes(params[:sic_code])
        format.html { redirect_to @sic_code, notice: 'Sic code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sic_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sic_codes/1
  # DELETE /sic_codes/1.json
  def destroy
    @sic_code = SicCode.find(params[:id])
    @sic_code.destroy

    respond_to do |format|
      format.html { redirect_to sic_codes_url }
      format.json { head :no_content }
    end
  end
end
