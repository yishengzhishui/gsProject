class NotificationMailer < ApplicationMailer
  def confirmed(product)
    @product = product
    @user = @product.user

    mail(to: @user.email, subject: "thanks")
  end
end
