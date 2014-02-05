class ThirdPartyRiskMgtsController < ApplicationController
  # GET /third_party_risk_mgts
  # GET /third_party_risk_mgts.json
  def index
    @third_party_risk_mgts = ThirdPartyRiskMgt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @third_party_risk_mgts }
    end
  end

  # GET /third_party_risk_mgts/1
  # GET /third_party_risk_mgts/1.json
  def show
    @third_party_risk_mgt = ThirdPartyRiskMgt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @third_party_risk_mgt }
      format.pdf do
        pdf = Third_party_risk_mgts_Pdf.new(@third_party_risk_mgt)
        send_data pdf.render , filename: "#{@third_party_risk_mgt.Risk_Title}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /third_party_risk_mgts/new
  # GET /third_party_risk_mgts/new.json
  def new
    @third_party_risk_mgt = ThirdPartyRiskMgt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @third_party_risk_mgt }
    end
  end

  # GET /third_party_risk_mgts/1/edit
  def edit
    @third_party_risk_mgt = ThirdPartyRiskMgt.find(params[:id])
  end

  # POST /third_party_risk_mgts
  # POST /third_party_risk_mgts.json
  def create
    @third_party_risk_mgt = ThirdPartyRiskMgt.new(params[:third_party_risk_mgt])

    respond_to do |format|
      if @third_party_risk_mgt.save
        format.html { redirect_to @third_party_risk_mgt, notice: 'Third party risk mgt was successfully created.' }
        format.json { render json: @third_party_risk_mgt, status: :created, location: @third_party_risk_mgt }
      else
        format.html { render action: "new" }
        format.json { render json: @third_party_risk_mgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /third_party_risk_mgts/1
  # PUT /third_party_risk_mgts/1.json
  def update
    @third_party_risk_mgt = ThirdPartyRiskMgt.find(params[:id])

    respond_to do |format|
      if @third_party_risk_mgt.update_attributes(params[:third_party_risk_mgt])
        format.html { redirect_to @third_party_risk_mgt, notice: 'Third party risk mgt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @third_party_risk_mgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /third_party_risk_mgts/1
  # DELETE /third_party_risk_mgts/1.json
  def destroy
    @third_party_risk_mgt = ThirdPartyRiskMgt.find(params[:id])
    @third_party_risk_mgt.destroy

    respond_to do |format|
      format.html { redirect_to third_party_risk_mgts_url }
      format.json { head :no_content }
    end
  end
end
