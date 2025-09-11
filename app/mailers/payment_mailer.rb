class PaymentMailer < ApplicationMailer
  default from: 'trung@cinema.com'

  def success_payment(user, payment)
    @user = user
    @payment = payment
    mail(to: @user.email, subject: "Xác nhận thanh toán thành công ##{payment.id}")
  end
end
