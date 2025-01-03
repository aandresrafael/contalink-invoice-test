class InvoicesController < ApplicationController
  def index
    begin
      start_date = DateTime.parse(params[:start_date]).beginning_of_day
      end_date = DateTime.parse(params[:end_date]).end_of_day

      render json: Invoice.filter_by_period(start_date, end_date), status: 200
    rescue
      render json: { message: 'Invalid date params' }, status: 400
    end
  end
end
