class AssetRiskMgtsController < ApplicationController
  # GET /asset_risk_mgts
  # GET /asset_risk_mgts.json
  def index
    @asset_risk_mgts = AssetRiskMgt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asset_risk_mgts }
    end
  end


  # GET /asset_risk_mgts/1
  # GET /asset_risk_mgts/1.json
  def show
    @asset_risk_mgt = AssetRiskMgt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erbs
      format.json { render json: @asset_risk_mgt }
      format.pdf do
        pdf = Asset_risk_mgtsPdf.new(@asset_risk_mgt)
        send_data pdf.render , filename: "#{@asset_risk_mgt.Risk_Title}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /asset_risk_mgts/new
  # GET /asset_risk_mgts/new.json
  def new
    @asset_risk_mgt = AssetRiskMgt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asset_risk_mgt }
    end
  end

  # GET /asset_risk_mgts/1/edit
  def edit
    @asset_risk_mgt = AssetRiskMgt.find(params[:id])
  end

  # POST /asset_risk_mgts
  # POST /asset_risk_mgts.json
  def create
    @asset_risk_mgt = AssetRiskMgt.new(params[:asset_risk_mgt])

    respond_to do |format|
      if @asset_risk_mgt.save
        format.html { redirect_to @asset_risk_mgt, notice: 'Asset risk mgt was successfully created.' }
        format.json { render json: @asset_risk_mgt, status: :created, location: @asset_risk_mgt }
      else
        format.html { render action: "new" }
        format.json { render json: @asset_risk_mgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asset_risk_mgts/1
  # PUT /asset_risk_mgts/1.json
  def update
    @asset_risk_mgt = AssetRiskMgt.find(params[:id])

    respond_to do |format|
      if @asset_risk_mgt.update_attributes(params[:asset_risk_mgt])
        format.html { redirect_to @asset_risk_mgt, notice: 'Asset risk mgt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asset_risk_mgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_risk_mgts/1
  # DELETE /asset_risk_mgts/1.json
  def destroy
    @asset_risk_mgt = AssetRiskMgt.find(params[:id])
    @asset_risk_mgt.destroy

    respond_to do |format|
      format.html { redirect_to asset_risk_mgts_url }
      format.json { head :no_content }
    end
  end
end
