class OperationsController < ApplicationController
	before_filter :authenticate_user!
	
  # GET /operations
  # GET /operations.json
  def index
	authorize! :index, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Index."  
    @operations = Operation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @operations }
    end
  end

  # GET /operations/1
  # GET /operations/1.json
  def show
	authorize! :read, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Read."  
    @operation = Operation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @operation }
    end
  end

  # GET /operations/new
  # GET /operations/new.json
  def new
	authorize! :create, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Create."
    @operation = Operation.new
	@ope_kinds = OpeKind.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operation }
    end
  end

  # GET /operations/1/edit
  def edit
	authorize! :update, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Update."
    @operation = Operation.find(params[:id])
	@ope_kinds = OpeKind.all
  end

  # POST /operations
  # POST /operations.json
  def create
	authorize! :create, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Create."
    @operation = Operation.new(params[:operation])

    respond_to do |format|
      if @operation.save
        format.html { redirect_to @operation, notice: 'Operation was successfully created.' }
        format.json { render json: @operation, status: :created, location: @operation }
      else
        format.html { render action: "new" }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /operations/1
  # PUT /operations/1.json
  def update
	authorize! :update, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Update."  
    @operation = Operation.find(params[:id])

    respond_to do |format|
      if @operation.update_attributes(params[:operation])
        format.html { redirect_to @operation, notice: 'Operation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operations/1
  # DELETE /operations/1.json
  def destroy
	authorize! :delete, :operation, :message => "Op&eacute;ration : Vous n'avez pas de droit Delete."  
    @operation = Operation.find(params[:id])
    @operation.destroy

    respond_to do |format|
      format.html { redirect_to operations_url }
      format.json { head :no_content }
    end
  end
end
