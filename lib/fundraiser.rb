require "fundraiser/engine"
require "devise"
require "haml-rails"
require "persistent_settings"
require "amazon/fps/signature_utils_for_outbound"

#TODO: This line is here due a Heroku issue:
#
#  http://stackoverflow.com/questions/11703679/opensslsslsslerror-on-heroku
#
#  No idea how it will work on other platforms
#
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


module Fundraiser
end
