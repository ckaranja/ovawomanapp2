class PractitionersController < ApplicationController
  before_action :set_practitioner, only: [:show, :edit, :update, :destroy]

  def index
    @practitioners = Practitioner.all
  end

  def show
  end

  def new
    @practitioner = Practitioner.new
  end

  def edit
  end

  def create
    @practitioner = Practitioner.new(practitioner_params)

    respond_to do |format|
      if @practitioner.save
        format.html { redirect_to @practitioner, notice: 'Practitioner was successfully created.' }
        format.json { render :show, status: :created, location: @practitioner }
      else
        format.html { render :new }
        format.json { render json: @practitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @practitioner.update(practitioner_params)
        format.html { redirect_to @practitioner, notice: 'Practitioner was successfully updated.' }
        format.json { render :show, status: :ok, location: @practitioner }
      else
        format.html { render :edit }
        format.json { render json: @practitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @practitioner.destroy
    respond_to do |format|
      format.html { redirect_to practitioners_url, notice: 'Practitioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner
      @practitioner = Practitioner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practitioner_params
      params.require(:practitioner).permit(:name)
    end
end
