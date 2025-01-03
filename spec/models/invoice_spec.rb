require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'filter_by_period' do

    it 'should return filter by start_date and end_date' do
      start_date = DateTime.parse('2022-01-03').beginning_of_day
      end_date = DateTime.parse('2022-01-04').end_of_day
      expect(Invoice.filter_by_period(start_date, end_date).count).to eq(107)
    end

    it 'should return empty array' do
      start_date = DateTime.parse('2021-01-03').beginning_of_day
      end_date = DateTime.parse('2021-01-04').end_of_day

      expect(Invoice.filter_by_period(start_date, end_date)).to be_empty
    end
  end


  describe 'top_days_sales' do
    it 'should return top days with more sales' do
      top_day  = Invoice.top_days_sales.first

      expect(top_day.day_total).to eq(19480.74)
      expect(top_day.date).to eq(Date.parse('2022-02-28'))
    end
  end
end
