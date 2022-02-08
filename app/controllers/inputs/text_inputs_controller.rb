class Inputs::TextInputsController < ApplicationController
  before_action :set_inputs_text_input, only: %i[ show edit update destroy ]

  # GET /inputs/text_inputs or /inputs/text_inputs.json
  def index
    @inputs_text_inputs = Inputs::TextInput.all
  end

  # GET /inputs/text_inputs/1 or /inputs/text_inputs/1.json
  def show
  end

  # GET /inputs/text_inputs/new
  def new
    @inputs_text_input = Inputs::TextInput.new
  end

  # GET /inputs/text_inputs/1/edit
  def edit
  end

  # POST /inputs/text_inputs or /inputs/text_inputs.json
  def create
    @inputs_text_input = Inputs::TextInput.new(inputs_text_input_params)

    respond_to do |format|
      if @inputs_text_input.save
        format.html { redirect_to inputs_text_input_url(@inputs_text_input), notice: "Text input was successfully created." }
        format.json { render :show, status: :created, location: @inputs_text_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inputs_text_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inputs/text_inputs/1 or /inputs/text_inputs/1.json
  def update
    respond_to do |format|
      if @inputs_text_input.update(inputs_text_input_params)
        format.html { redirect_to inputs_text_input_url(@inputs_text_input), notice: "Text input was successfully updated." }
        format.json { render :show, status: :ok, location: @inputs_text_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inputs_text_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inputs/text_inputs/1 or /inputs/text_inputs/1.json
  def destroy
    @inputs_text_input.destroy

    respond_to do |format|
      format.html { redirect_to inputs_text_inputs_url, notice: "Text input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inputs_text_input
      @inputs_text_input = Inputs::TextInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inputs_text_input_params
      params.require(:inputs_text_input).permit(:name, :label)
    end
end
