class BillingPortalController < ApplicationController

  def create
    portalsession = Stripe::BillingPortal::Session.create({
      customer: current_user.stripe_customer_id,
      return_url: root_url,
    })
    redirect_to portalsession.url
  end
end
