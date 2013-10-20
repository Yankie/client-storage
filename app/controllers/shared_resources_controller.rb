class SharedResourcesController < ApplicationController
  before_action :set_shared_resource, only: [:show, :edit, :update, :destroy]

  # GET /shared_resources
  # GET /shared_resources.json
  def index
    @shared_resources = SharedResource.all
  end

  # GET /shared_resources/1
  # GET /shared_resources/1.json
  def show
  end

  # GET /shared_resources/new
  def new
    @shared_resource = SharedResource.new
  end

  # GET /shared_resources/1/edit
  def edit
  end

  # POST /shared_resources
  # POST /shared_resources.json
  def create
    @shared_resource = SharedResource.new(shared_resource_params)

    respond_to do |format|
      if @shared_resource.save
        format.html { redirect_to @shared_resource, notice: 'Shared resource was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shared_resource }
      else
        format.html { render action: 'new' }
        format.json { render json: @shared_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_resources/1
  # PATCH/PUT /shared_resources/1.json
  def update
    respond_to do |format|
      if @shared_resource.update(shared_resource_params)
        format.html { redirect_to @shared_resource, notice: 'Shared resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shared_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_resources/1
  # DELETE /shared_resources/1.json
  def destroy
    @shared_resource.destroy
    respond_to do |format|
      format.html { redirect_to shared_resources_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_resource
      @shared_resource = SharedResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_resource_params
      params.require(:shared_resource).permit(:path, :directory, :read, :write)
    end
end
