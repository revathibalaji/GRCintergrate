class RiskClassificationsController < ApplicationController
  # GET /risk_classifications
  # GET /risk_classifications.json
  def index
    @risk_classifications = RiskClassification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risk_classifications }
    end
  end

  # GET /risk_classifications/1
  # GET /risk_classifications/1.json
  def show
    @risk_classification = RiskClassification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risk_classification }
      format.pdf do
        pdf = Risk_classificationsPdf.new(@risk_classification)
        send_data pdf.render , filename: "#{@risk_classification.Classification_Type}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /risk_classifClassification_Typeications/new
  # GET /risk_classifications/new.json
  def new
    @risk_classification = RiskClassification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risk_classification }
    end
  end

  # GET /risk_classifications/1/edit
  def edit
    @risk_classification = RiskClassification.find(params[:id])
  end

  # POST /risk_classifications
  # POST /risk_classifications.json
  def create
    @risk_classification = RiskClassification.new(params[:risk_classification])

    respond_to do |format|
      if @risk_classification.save
        format.html { redirect_to @risk_classification, notice: 'Risk classification was successfully created.' }
        format.json { render json: @risk_classification, status: :created, location: @risk_classification }
      else
        format.html { render action: "new" }
        format.json { render json: @risk_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risk_classifications/1
  # PUT /risk_classifications/1.json
  def update
    @risk_classification = RiskClassification.find(params[:id])

    respond_to do |format|
      if @risk_classification.update_attributes(params[:risk_classification])
        format.html { redirect_to @risk_classification, notice: 'Risk classification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risk_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risk_classifications/1
  # DELETE /risk_classifications/1.json
  def destroy
    @risk_classification = RiskClassification.find(params[:id])
    @risk_classification.destroy

    respond_to do |format|
      format.html { redirect_to risk_classifications_url }
      format.json { head :no_content }
    end
  end
end
