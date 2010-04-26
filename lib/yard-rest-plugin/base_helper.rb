module YARD::Templates::Helpers
  module BaseHelper

    # Adds additional test that only includes Objects that contain a URL tag
    def run_verifier(list)
      if options[:verifier]
        list = list.reject {|item| options[:verifier].call(item).is_a?(FalseClass) }
      end

      reject_without_url(list)
    end

    def reject_without_url(list)
      list.reject {|object| object.tags("url").empty? }
    end
  
  end
end