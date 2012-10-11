module Fundraiser
  class Engine < ::Rails::Engine
    isolate_namespace Fundraiser

    config.after_initialize do
      Crowdblog::Post.send(:belongs_to, :author, :class_name => "Fundraiser::User")
      Crowdblog::Post.send(:belongs_to, :publisher, :class_name => "Fundraiser::User")
      Crowdblog::ApplicationController.send(:layout, 'fundraiser/application')
    end
  end
end
