module Fundraiser
  class Contribution < ActiveRecord::Base
    attr_accessible :amount, :email, :reference, :transaction

    serialize :request_params

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
  end
end
