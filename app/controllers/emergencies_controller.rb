class EmergenciesController < ApplicationController
  # GET /emergencies
  # GET /emergencies.json
  def index
    @emergencies = Emergency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emergencies }
    end
  end

  # GET /emergencies/1
  # GET /emergencies/1.json
  def show
    @emergency = Emergency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emergency }
       format.pdf do
        pdf = EmergenciesPdf.new(@emergency)
        send_data pdf.render , filename: "#{@emergency.police}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /emergencies/new
  # GET /emergencies/new.json
  def new
    @emergency = Emergency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emergency }
    end
  end

  # GET /emergencies/1/edit
  def edit
    @emergency = Emergency.find(params[:id])
  end

  # POST /emergencies
  # POST /emergencies.json
  def create
    @emergency = Emergency.new(params[:emergency])

    respond_to do |format|
      if @emergency.save
        format.html { redirect_to @emergency, notice: 'Emergency was successfully created.' }
        format.json { render json: @emergency, status: :created, location: @emergency }
      else
        format.html { render action: "new" }
        format.json { render json: @emergency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emergencies/1
  # PUT /emergencies/1.json
  def update
    @emergency = Emergency.find(params[:id])

    respond_to do |format|
      if @emergency.update_attributes(params[:emergency])
        format.html { redirect_to @emergency, notice: 'Emergency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emergency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergencies/1
  # DELETE /emergencies/1.json
  def destroy
    @emergency = Emergency.find(params[:id])
    @emergency.destroy

    respond_to do |format|
      format.html { redirect_to emergencies_url }
      format.json { head :no_content }
    end
  end
end
