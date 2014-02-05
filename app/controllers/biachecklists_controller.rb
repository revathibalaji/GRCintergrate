class BiachecklistsController < ApplicationController
  # GET /biachecklists
  # GET /biachecklists.json
  def index
    @biachecklists = Biachecklist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @biachecklists }
    end
  end

  # GET /biachecklists/1
  # GET /biachecklists/1.json
  def show
    @biachecklist = Biachecklist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @biachecklist }
      format.pdf do
        pdf = BiachecklistsPdf.new(@biachecklist)
        send_data pdf.render , filename: "#{@biachecklist.person_interviewed}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /biachecklists/new
  # GET /biachecklists/new.json
  def new
    @biachecklist = Biachecklist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @biachecklist }
    end
  end

  # GET /biachecklists/1/edit
  def edit
    @biachecklist = Biachecklist.find(params[:id])
  end

  # POST /biachecklists
  # POST /biachecklists.json
  def create
    @biachecklist = Biachecklist.new(params[:biachecklist])

    respond_to do |format|
      if @biachecklist.save
        format.html { redirect_to @biachecklist, notice: 'Biachecklist was successfully created.' }
        format.json { render json: @biachecklist, status: :created, location: @biachecklist }
      else
        format.html { render action: "new" }
        format.json { render json: @biachecklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /biachecklists/1
  # PUT /biachecklists/1.json
  def update
    @biachecklist = Biachecklist.find(params[:id])

    respond_to do |format|
      if @biachecklist.update_attributes(params[:biachecklist])
        format.html { redirect_to @biachecklist, notice: 'Biachecklist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @biachecklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biachecklists/1
  # DELETE /biachecklists/1.json
  def destroy
    @biachecklist = Biachecklist.find(params[:id])
    @biachecklist.destroy

    respond_to do |format|
      format.html { redirect_to biachecklists_url }
      format.json { head :no_content }
    end
  end
end
