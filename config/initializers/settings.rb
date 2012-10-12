Fundraiser::Settings.load_from_persistance

if Fundraiser::Settings.ready?
  Fundraiser::Settings.
      amazon_checkout_url = ENV['AMAZON_FPS_URL'] || "https://authorize.payments-sandbox.amazon.com/pba/paypipeline"
  Fundraiser::Settings.
      amazon_ask_for_shipping = ENV['AMAZON_FPS_ASK_SHIPPING_ADDRESS'] || "0"
end
