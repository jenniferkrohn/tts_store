class ChargesController < ApplicationController
  def create
  	@amount = 500

  	customer = Stripe::customer.create(
  			:email => 'example@stripe.com',
  			:card => params[:stripeToken]
  		)

  	charge = Stripe::Charge.create(
  			:customer => customer.id,
  			:amount => @amount,
  			:description => 'Rails Stripe customer',
  			:currency => 'usd'
  		)

  	rescue Stripe::CardError => e
  	flash[:error] = e.message
  	redirect_to charges_path
  end		

  def new
  end
end
