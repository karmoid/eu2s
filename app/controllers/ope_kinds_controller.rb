class OpeKindsController < ApplicationController
  # GET /ope_kinds
  # GET /ope_kinds.json
  def index
    @ope_kinds = OpeKind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ope_kinds }
    end
  end

  # GET /ope_kinds/1
  # GET /ope_kinds/1.json
  def show
    @ope_kind = OpeKind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ope_kind }
    end
  end

  # GET /ope_kinds/new
  # GET /ope_kinds/new.json
  def new
    @ope_kind = OpeKind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ope_kind }
    end
  end

  # GET /ope_kinds/1/edit
  def edit
    @ope_kind = OpeKind.find(params[:id])
  end

  # POST /ope_kinds
  # POST /ope_kinds.json
  def create
    @ope_kind = OpeKind.new(params[:ope_kind])

    respond_to do |format|
      if @ope_kind.save
        format.html { redirect_to @ope_kind, notice: 'Ope kind was successfully created.' }
        format.json { render json: @ope_kind, status: :created, location: @ope_kind }
      else
        format.html { render action: "new" }
        format.json { render json: @ope_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ope_kinds/1
  # PUT /ope_kinds/1.json
  def update
    @ope_kind = OpeKind.find(params[:id])

    respond_to do |format|
      if @ope_kind.update_attributes(params[:ope_kind])
        format.html { redirect_to @ope_kind, notice: 'Ope kind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ope_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ope_kinds/1
  # DELETE /ope_kinds/1.json
  def destroy
    @ope_kind = OpeKind.find(params[:id])
    @ope_kind.destroy

    respond_to do |format|
      format.html { redirect_to ope_kinds_url }
      format.json { head :no_content }
    end
  end
end
