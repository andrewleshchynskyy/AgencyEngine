class CostGroupsController < ApplicationController
  # GET /cost_groups
  # GET /cost_groups.json
  def index
    @cost_groups = CostGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cost_groups }
    end
  end

  # GET /cost_groups/1
  # GET /cost_groups/1.json
  def show
    @cost_group = CostGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cost_group }
    end
  end

  # GET /cost_groups/new
  # GET /cost_groups/new.json
  def new
    @cost_group = CostGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cost_group }
    end
  end

  # GET /cost_groups/1/edit
  def edit
    @cost_group = CostGroup.find(params[:id])
  end

  # POST /cost_groups
  # POST /cost_groups.json
  def create
    @cost_group = CostGroup.new(params[:cost_group])

    respond_to do |format|
      if @cost_group.save
        format.html { redirect_to @cost_group, notice: 'Cost group was successfully created.' }
        format.json { render json: @cost_group, status: :created, location: @cost_group }
      else
        format.html { render action: "new" }
        format.json { render json: @cost_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cost_groups/1
  # PUT /cost_groups/1.json
  def update
    @cost_group = CostGroup.find(params[:id])

    respond_to do |format|
      if @cost_group.update_attributes(params[:cost_group])
        format.html { redirect_to @cost_group, notice: 'Cost group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cost_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_groups/1
  # DELETE /cost_groups/1.json
  def destroy
    @cost_group = CostGroup.find(params[:id])
    @cost_group.destroy

    respond_to do |format|
      format.html { redirect_to cost_groups_url }
      format.json { head :no_content }
    end
  end
end
