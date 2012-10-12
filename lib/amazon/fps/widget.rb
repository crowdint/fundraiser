module Amazon
  module FPS
    class Widget
      @@app_name = "ASP"
      @@http_method = "POST"
      @@service_end_point = "https://authorize.payments-sandbox.amazon.com/pba/paypipeline"

      @@access_key = "<Paste your access key id here>"
      @@secret_key = "<Paste your secret key here>"

      def self.get_paynow_widget_params(amount, description, reference_id, immediate_return,
                                        return_url, abandon_url, process_immediate, ipn_url, cobranding_style, signature_version,
                                        signatureMethod)
        form_hidden_inputs = {}
        form_hidden_inputs["accessKey"] = Fundraiser::Settings.aws_access_key
        form_hidden_inputs["amount"] = amount
        form_hidden_inputs["description"] = description

        form_hidden_inputs["referenceId"] = reference_id unless reference_id.nil?
        form_hidden_inputs["immediateReturn"] = immediate_return unless immediate_return.nil?
        form_hidden_inputs["returnUrl"] = return_url unless return_url.nil?
        form_hidden_inputs["abandonUrl"] = abandon_url unless abandon_url.nil?
        form_hidden_inputs["processImmediate"] = process_immediate unless process_immediate.nil?
        form_hidden_inputs["ipnUrl"] = ipn_url unless ipn_url.nil?
        form_hidden_inputs["cobrandingStyle"] = cobranding_style unless cobranding_style.nil?
        form_hidden_inputs[Amazon::FPS::SignatureUtils::SIGNATURE_VERSION_KEYNAME] = signature_version unless signature_version.nil?
        form_hidden_inputs[Amazon::FPS::SignatureUtils::SIGNATURE_METHOD_KEYNAME] = signatureMethod unless signatureMethod.nil?

        form_hidden_inputs
      end

      def self.get_paynow_widget_form(form_hidden_inputs)
        form = "<form action=\"" + Fundraiser::Settings.amazon_checkout_url + "\" method=\"" + @@http_method + "\">\n"
        form += "<input type=\"image\" src=\"https://authorize.payments-sandbox.amazon.com/pba/images/payNowButton.png\" border=\"0\">\n"
        form_hidden_inputs.each { |k,v|
          form += "<input type=\"hidden\" name=\"" + k + "\" value=\"" + v + "\" >\n"
        }
        form += "</form>\n"
      end

      def self.widget(amount, title, reward_id, return_url, ipn_url, ask_for_shipping="0")
        uri = URI.parse(Fundraiser::Settings.amazon_checkout_url)
        params = get_paynow_widget_params(amount, title, reward_id.to_s, "1",
                                          return_url, nil, ask_for_shipping,
                                          ipn_url, "logo", "2", Amazon::FPS::SignatureUtils::HMAC_SHA256_ALGORITHM)

        signature = Amazon::FPS::SignatureUtils.sign_parameters({:parameters => params,
                                     :aws_secret_key => Fundraiser::Settings.aws_secret_key,
                                     :host => uri.host,
                                     :verb => @@http_method,
                                     :uri  => uri.path })
        params[Amazon::FPS::SignatureUtils::SIGNATURE_KEYNAME] = signature
        paynow_widget_form = get_paynow_widget_form(params)
        paynow_widget_form.html_safe
      end
    end
  end
end
