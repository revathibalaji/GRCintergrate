class ExceptsController < ApplicationController
  # GET /excepts
  # GET /excepts.json
  def index
    @excepts = Except.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @excepts }
    end
  end

  # GET /excepts/1
  # GET /excepts/1.json
  def show
    @except = Except.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @except }
    end
  end

  # GET /excepts/new
  # GET /excepts/new.json
  def new
    @except = Except.new
    @policy = Policy.find(:all)


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @except }
    end
  end

  # GET /excepts/1/edit
  def edit
    @except = Except.find(params[:id])
    @policy = Policy.find(:all)
  end

  # POST /excepts
  # POST /excepts.json
  def create
    @except = Except.new(params[:except])

    respond_to do |format|
      if @except.save
        format.html { redirect_to @except, notice: 'Except was successfully created.' }
        format.json { render json: @except, status: :created, location: @except }
      else
        format.html { render action: "new" }
        format.json { render json: @except.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /excepts/1
  # PUT /excepts/1.json
  def update
    @except = Except.find(params[:id])

    respond_to do |format|
      if @except.update_attributes(params[:except])
        format.html { redirect_to @except, notice: 'Except was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @except.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excepts/1
  # DELETE /excepts/1.json
  def destroy
    @except = Except.find(params[:id])
    @except.destroy

    respond_to do |format|
      format.html { redirect_to excepts_url }
      format.json { head :no_content }
    end
  end
end
