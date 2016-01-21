class HomeController < ApplicationController
  def index
    @shift_dates = ShiftDate.all
  end
  def show
     @id = params[:id]
     @shift_dates = ShiftDate.all
  end
end
