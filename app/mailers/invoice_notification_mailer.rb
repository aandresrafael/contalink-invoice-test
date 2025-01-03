class InvoiceNotificationMailer < ApplicationMailer

  def top_sales_notification
    @top_days_sales = Invoice.top_days_sales
    mail(to: 'csalinas@contalink.com', subject: "Top 10 day's sales report.")
  end
end
