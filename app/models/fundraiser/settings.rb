module Fundraiser
  class Settings < ActiveRecord::Base
    include Persistent::Settings

    AMAZON_SETTINGS = [ :amazon_access_key, :amazon_payments_account_id, :amazon_signature ]

    attr_accessible :var, :value

    AMAZON_SETTINGS.each do |column|
      attr_accessor column
      define_method column do
        Fundraiser::Settings.send(column)
      end
    end

    def self.store(hash)
      hash.each do |key, value|
        send("#{key}=", value)
      end
    end

    def self.ready?
      table_exists?
    end

    def self.amazon!
      Fundraiser::Settings::AMAZON_SETTINGS.each do |setting|
        begin
          Fundraiser::Settings.send setting
        rescue
          Fundraiser::Settings.send "#{setting}=", ""
        end
      end
    end
  end
end
