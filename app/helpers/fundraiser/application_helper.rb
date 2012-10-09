module Fundraiser
  module ApplicationHelper
    def bootstrap_text_field(f, column, input_class = "")
      render "bootstrap_text_field", :f => f, :column => column, :input_class => input_class
    end

    def bootstrap_text_area(f, column, input_class = "")
      render "bootstrap_text_area", :f => f, :column => column, :input_class => input_class
    end
  end
end
