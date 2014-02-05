class LabellingsController < ApplicationController
  # GET /labellings
  # GET /labellings.json
  def index
    @labellings = Labelling.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @labellings }
    end
  end

  # GET /labellings/1
  # GET /labellings/1.json
  def show
    @labelling = Labelling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @labelling }
      format.pdf do
        pdf = LabellingsPdf.new(@labelling)
        send_data pdf.render , filename: "#{@labelling.name}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /labellings/new
  # GET /labellings/new.json
  def new
    @labelling = Labelling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @labelling }
    end
  end

  # GET /labellings/1/edit
  def edit
    @labelling = Labelling.find(params[:id])
  end

  # POST /labellings
  # POST /labellings.json
  def create
    @labelling = Labelling.new(params[:labelling])

    respond_to do |format|
      if @labelling.save
        format.html { redirect_to @labelling, notice: 'Labelling was successfully created.' }
        format.json { render json: @labelling, status: :created, location: @labelling }
      else
        format.html { render action: "new" }
        format.json { render json: @labelling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /labellings/1
  # PUT /labellings/1.json
  def update
    @labelling = Labelling.find(params[:id])

    respond_to do |format|
      if @labelling.update_attributes(params[:labelling])
        format.html { redirect_to @labelling, notice: 'Labelling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @labelling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labellings/1
  # DELETE /labellings/1.json
  def destroy
    @labelling = Labelling.find(params[:id])
    @labelling.destroy

    respond_to do |format|
      format.html { redirect_to labellings_url }
      format.json { head :no_content }
    end
  end
end
