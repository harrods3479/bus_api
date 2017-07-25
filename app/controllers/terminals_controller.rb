class TerminalsController < ApplicationController
  before_action :set_terminal, only: [:show, :update, :destroy]

  # GET /terminals
  def index
    @terminals = Terminal.all

    render json: @terminals
  end

  # GET /terminals/1
  def show
    render json: @terminal
  end

  # POST /terminals
  def create
    @terminal = Terminal.new(terminal_params)

    if @terminal.save
      render json: @terminal, status: :created, location: @terminal
    else
      render json: @terminal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /terminals/1
  def update
    if @terminal.update(terminal_params)
      render json: @terminal
    else
      render json: @terminal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /terminals/1
  def destroy
    @terminal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal
      @terminal = Terminal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def terminal_params
      params.require(:terminal).permit(:name, :notes)
    end
end
