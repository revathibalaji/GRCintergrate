class BuRiskMgtsController < ApplicationController
  # GET /bu_risk_mgts
  # GET /bu_risk_mgts.json
  def index
    @bu_risk_mgts = BuRiskMgt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bu_risk_mgts }
    end
  end

  # GET /bu_risk_mgts/1
  # GET /bu_risk_mgts/1.json
  def show
    @bu_risk_mgt = BuRiskMgt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bu_risk_mgt }
      format.pdf do
        pdf = Bu_risk_mgts_Pdf.new(@bu_risk_mgt)
        send_data pdf.render , filename: "#{@bu_risk_mgt.Risk_Title}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /bu_risk_mgts/new
  # GET /bu_risk_mgts/new.json
  def new
    @bu_risk_mgt = BuRiskMgt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bu_risk_mgt }
    end
  end

  # GET /bu_risk_mgts/1/edit
  def edit
    @bu_risk_mgt = BuRiskMgt.find(params[:id])
  end

  # POST /bu_risk_mgts
  # POST /bu_risk_mgts.json
  def create
    @bu_risk_mgt = BuRiskMgt.new(params[:bu_risk_mgt])

    respond_to do |format|
      if @bu_risk_mgt.save
        format.html { redirect_to @bu_risk_mgt, notice: 'Bu risk mgt was successfully created.' }
        format.json { render json: @bu_risk_mgt, status: :created, location: @bu_risk_mgt }
      else
        format.html { render action: "new" }
        format.json { render json: @bu_risk_mgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bu_risk_mgts/1
  # PUT /bu_risk_mgts/1.json
  def update
    @bu_risk_mgt = BuRiskMgt.find(params[:id])

    respond_to do |format|
      if @bu_risk_mgt.update_attributes(params[:bu_risk_mgt])
        format.html { redirect_to @bu_risk_mgt, notice: 'Bu risk mgt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bu_risk_mgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bu_risk_mgts/1
  # DELETE /bu_risk_mgts/1.json
  def destroy
    @bu_risk_mgt = BuRiskMgt.find(params[:id])
    @bu_risk_mgt.destroy

    respond_to do |format|
      format.html { redirect_to bu_risk_mgts_url }
      format.json { head :no_content }
    end
  end
end
