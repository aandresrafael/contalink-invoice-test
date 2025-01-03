class Invoice < ApplicationRecord

  scope :filter_by_period, -> (start_date, end_date) do
    cache_args = ["period_filter_#{start_date}_to_#{end_date}", expires_in: 1.day]

    Rails.cache.fetch(cache_args) do
      where("invoice_date >= ? AND invoice_date <= ?", start_date, end_date).
      order('invoice_date ASC')
    end
  end


  def self.top_days_sales
    Invoice
    .select('date(invoice_date), sum(total) as day_total')
    .group('date(invoice_date)')
    .order('day_total desc')
    .limit(10)
  end
end
