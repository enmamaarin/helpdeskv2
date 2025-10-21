class TicketsController < ApplicationController
  def rate
  @ticket = Ticket.find(params[:id])
  @ticket.update(rating: params[:ticket][:rating])
  redirect_to myticket_path, notice: "Rating saved!"
end

end