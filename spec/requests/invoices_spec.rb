require 'rails_helper'

RSpec.describe "Invoices", type: :request do
  describe "GET /index" do

    it 'render success response' do
      get '/invoices', params: { start_date: '2022-01-03', end_date: '2022-01-04'}

      expect(response.status).to eq(200)
    end

    it 'respond bad request for invalid params' do
      get '/invoices', params: { start_date: '2022-0-03', end_date: '2022-0-04'}

      expect(response.status).to eq(400)
    end
  end
end
