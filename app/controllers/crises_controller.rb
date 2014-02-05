class CrisesController < ApplicationController
  # GET /crises
  # GET /crises.json
  def index
    @crises = Crisis.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crises }
    end
  end

  # GET /crises/1
  # GET /crises/1.json
  def show
    @crisis = Crisis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crisis }
      format.pdf do
        pdf = CrisesPdf.new(@crisis)
        send_data pdf.render , filename: "#{@crisis.crisis_id}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /crises/new
  # GET /crises/new.json
  def new
    @crisis = Crisis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crisis }
    end
  end

  # GET /crises/1/edit
  def edit
    @crisis = Crisis.find(params[:id])
  end

  # POST /crises
  # POST /crises.json
  def create
    @crisis = Crisis.new(params[:crisis])

    respond_to do |format|
      if @crisis.save
        format.html { redirect_to @crisis, notice: 'Crisis was successfully created.' }
        format.json { render json: @crisis, status: :created, location: @crisis }
      else
        format.html { render action: "new" }
        format.json { render json: @crisis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crises/1
  # PUT /crises/1.json
  def update
    @crisis = Crisis.find(params[:id])

    respond_to do |format|
      if @crisis.update_attributes(params[:crisis])
        format.html { redirect_to @crisis, notice: 'Crisis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crisis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crises/1
  # DELETE /crises/1.json
  def destroy
    @crisis = Crisis.find(params[:id])
    @crisis.destroy

    respond_to do |format|
      format.html { redirect_to crises_url }
      format.json { head :no_content }
    end
  end
end
