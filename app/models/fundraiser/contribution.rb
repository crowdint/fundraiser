module Fundraiser
  class Contribution < ActiveRecord::Base
    attr_accessible :amount, :email, :reference, :transaction, :name, :stripeToken


    serialize :request_params
    after_create :stripe_charge

    def self.create_from_amazon_ipn(params)
      create(
        :email => params["buyerEmail"],
        :reference => params["referenceId"],
        :request_params => params,
        :amount => amazon_amount_to_cents(params["transactionAmount"])
      )
    end

    def self.amazon_amount_to_cents(amount_with_currency)
      amount = amount_with_currency.split(' ').last
      (amount.to_f * 100).to_i
    end

    def self.total_contributed
      sum(:amount) / 100
    end

    def stripe_charge
        # set your secret key: remember to change this to your live secret key in production
        # see your keys here https://manage.stripe.com/account
        Stripe.api_key = Fundraiser::Settings.stripe_secret_key

        # get the credit card details submitted by the form
        token = self.stripeToken

        # create the charge on Stripe's servers - this will charge the user's card
        charge = Stripe::Charge.create(
          :amount => self.amount, # amount in cents, again
          :currency => "usd",
          :card => token,
          :description => "#{self.name} -  #{self.email}"
        )
    end

  end
end
