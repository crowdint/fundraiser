module Fundraiser
  module Devise
    class FailureApp < ::Devise::FailureApp
      def redirect_url
        fundraiser.new_user_session_path
      end
    end
  end
end
