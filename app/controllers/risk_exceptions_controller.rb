class RiskExceptionsController < ApplicationController
  # GET /risk_exceptions
  # GET /risk_exceptions.json
  def index
    @risk_exceptions = RiskException.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risk_exceptions }
    end
  end

  # GET /risk_exceptions/1
  # GET /risk_exceptions/1.json
  def show
    @risk_exception = RiskException.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risk_exception }
      format.pdf do
        pdf = Risk_exceptionsPdf.new(@risk_exception)
        send_data pdf.render , filename: "#{@risk_exception.Risk_Exception_Title}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /risk_exceptions/new
  # GET /risk_exceptions/new.json
  def new
    @risk_exception = RiskException.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risk_exception }
    end
  end

  # GET /risk_exceptions/1/edit
  def edit
    @risk_exception = RiskException.find(params[:id])
  end

  # POST /risk_exceptions
  # POST /risk_exceptions.json
  def create
    @risk_exception = RiskException.new(params[:risk_exception])

    respond_to do |format|
      if @risk_exception.save
        format.html { redirect_to @risk_exception, notice: 'Risk exception was successfully created.' }
        format.json { render json: @risk_exception, status: :created, location: @risk_exception }
      else
        format.html { render action: "new" }
        format.json { render json: @risk_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risk_exceptions/1
  # PUT /risk_exceptions/1.json
  def update
    @risk_exception = RiskException.find(params[:id])

    respond_to do |format|
      if @risk_exception.update_attributes(params[:risk_exception])
        format.html { redirect_to @risk_exception, notice: 'Risk exception was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risk_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risk_exceptions/1
  # DELETE /risk_exceptions/1.json
  def destroy
    @risk_exception = RiskException.find(params[:id])
    @risk_exception.destroy

    respond_to do |format|
      format.html { redirect_to risk_exceptions_url }
      format.json { head :no_content }
    end
  end
end
