class Inputs::BooleanInputsController < ApplicationController
  before_action :set_inputs_boolean_input, only: %i[ show edit update destroy ]

  # GET /inputs/boolean_inputs or /inputs/boolean_inputs.json
  def index
    @inputs_boolean_inputs = Inputs::BooleanInput.all
  end

  # GET /inputs/boolean_inputs/1 or /inputs/boolean_inputs/1.json
  def show
  end

  # GET /inputs/boolean_inputs/new
  def new
    @inputs_boolean_input = Inputs::BooleanInput.new
  end

  # GET /inputs/boolean_inputs/1/edit
  def edit
  end

  # POST /inputs/boolean_inputs or /inputs/boolean_inputs.json
  def create
    @inputs_boolean_input = Inputs::BooleanInput.new(inputs_boolean_input_params)

    respond_to do |format|
      if @inputs_boolean_input.save
        format.html { redirect_to inputs_boolean_input_url(@inputs_boolean_input), notice: "Boolean input was successfully created." }
        format.json { render :show, status: :created, location: @inputs_boolean_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inputs_boolean_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inputs/boolean_inputs/1 or /inputs/boolean_inputs/1.json
  def update
    respond_to do |format|
      if @inputs_boolean_input.update(inputs_boolean_input_params)
        format.html { redirect_to inputs_boolean_input_url(@inputs_boolean_input), notice: "Boolean input was successfully updated." }
        format.json { render :show, status: :ok, location: @inputs_boolean_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inputs_boolean_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inputs/boolean_inputs/1 or /inputs/boolean_inputs/1.json
  def destroy
    @inputs_boolean_input.destroy

    respond_to do |format|
      format.html { redirect_to inputs_boolean_inputs_url, notice: "Boolean input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inputs_boolean_input
      @inputs_boolean_input = Inputs::BooleanInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inputs_boolean_input_params
      params.require(:inputs_boolean_input).permit(:name, :label, :type)
    end
end
