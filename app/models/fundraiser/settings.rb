module Fundraiser
  class Settings < ActiveRecord::Base
    include Persistent::Settings

    STRIPE_SETTINGS = [ :stripe_secret_key, :stripe_public_key ]
    GENERAL_SETTINGS = [ :funding_goal, :funding_end_date ]

    attr_accessible :var, :value

    (STRIPE_SETTINGS + GENERAL_SETTINGS).each do |column|
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
      Fundraiser::Settings::STRIPE_SETTINGS.each do |setting|
        begin
          Fundraiser::Settings.send setting
        rescue
          Fundraiser::Settings.send "#{setting}=", ""
        end
      end
    end

    load_from_persistance
  end
end
