class DonatorsController < ApplicationController
  # GET /donators
  # GET /donators.json
  def index
    @donators = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donators }
    end
  end

  # GET /donators/1
  # GET /donators/1.json
  
  def show
  @title = "View Profile"
end

  # GET /donators/new
  # GET /donators/new.json
  def new
    @donator = Donator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donator }
    end
  end

  # GET /donators/1/edit
  def edit
    @donator = Donator.find(params[:id])
  end

  # POST /donators
  # POST /donators.json
  def create
    @donator = Donator.new(params[:donator])

    respond_to do |format|
      if @donator.save
        format.html { redirect_to @donator, notice: 'Donator was successfully created.' }
        format.json { render json: @donator, status: :created, location: @donator }
      else
        format.html { render action: "new" }
        format.json { render json: @donator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /donators/1
  # PUT /donators/1.json
  def update
    @donator = Donator.find(params[:id])

    respond_to do |format|
      if @donator.update_attributes(params[:donator])
        format.html { redirect_to @donator, notice: 'Donator was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @donator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donators/1
  # DELETE /donators/1.json
  def destroy
    @donator = Donator.find(params[:id])
    @donator.destroy

    respond_to do |format|
      format.html { redirect_to donators_url }
      format.json { head :ok }
    end
  end
end
