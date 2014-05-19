class SubjectSetsController < ApplicationController
  before_action :set_subject_set, only: [:show, :edit, :update, :destroy]

  # GET /subject_sets
  # GET /subject_sets.json
  def index
    @subject_sets = SubjectSet.all
  end

  # GET /subject_sets/1
  # GET /subject_sets/1.json
  def show
  end

  # GET /subject_sets/new
  def new
    @subject_set = SubjectSet.new
  end

  # GET /subject_sets/1/edit
  def edit
  end

  # POST /subject_sets
  # POST /subject_sets.json
  def create
    @subject_set = SubjectSet.new(subject_set_params)

    respond_to do |format|
      if @subject_set.save
        format.html { redirect_to @subject_set, notice: 'Subject set was successfully created.' }
        format.json { render :show, status: :created, location: @subject_set }
      else
        format.html { render :new }
        format.json { render json: @subject_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_sets/1
  # PATCH/PUT /subject_sets/1.json
  def update
    respond_to do |format|
      if @subject_set.update(subject_set_params)
        format.html { redirect_to @subject_set, notice: 'Subject set was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_set }
      else
        format.html { render :edit }
        format.json { render json: @subject_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_sets/1
  # DELETE /subject_sets/1.json
  def destroy
    @subject_set.destroy
    respond_to do |format|
      format.html { redirect_to subject_sets_url, notice: 'Subject set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_set
      @subject_set = SubjectSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_set_params
      params.require(:subject_set).permit(:name, :note, :occurrence_id)
    end
end
