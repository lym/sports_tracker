class TicketDrawsController < ApplicationController
  # before_filter :authenticate_user!
  def new
    @ticket_draw = TicketDraw.new
  end

  def create
    @ticket_draw = TicketDraw.new(params[:ticket_draw])

    if @ticket_draw.save
      flash[:success] = "Congratulations! You have been entered into the draw"
      redirect_to root_path
    end
  end
end
