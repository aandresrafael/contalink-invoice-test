class SalesEmailNotificationJob
  include Sidekiq::Job

  def perform(*args)
    InvoiceNotificationMailer.top_sales_notification.deliver
  end
end
