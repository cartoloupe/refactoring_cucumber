require 'pry'

module Cucumber
  module RbSupport
    class RbStepDefinition
      def invoke(args)
        begin
          #binding.pry
          args = @rb_language.execute_transforms(args)
          @rb_language.current_world.cucumber_instance_exec(true, regexp_source, *args, &@proc)
        rescue Cucumber::ArityMismatchError => e
          e.backtrace.unshift(self.backtrace_line)
          raise e
        end
      end
    end
  end
end

module Cucumber
  module RbSupport
    class RbLanguage
      def register_rb_step_definition(regexp, proc_or_sym, options)
        #binding.pry
        step_definition = RbStepDefinition.new(self, regexp, proc_or_sym, options)
        @step_definitions << step_definition
        step_definition
      end
    end
  end
end




module Cucumber
  module RbSupport
    module RbDsl
      def register_rb_step_definition(regexp, symbol = nil, options = {}, &proc)
        #binding.pry
        proc_or_sym = symbol || proc
        RbDsl.register_rb_step_definition(regexp, proc_or_sym, options)
      end
    end
  end
end



AfterStep do |scenario|
  current_step = @__cucumber_runtime
    .instance_variable_get(:@support_code)
    .instance_variable_get(:@match_cache)
    .keys.last.first
  @cukegator_analysis ||= []
  @cukegator_analysis << {current_step.to_sym => relevant_instance_variables}
end


def relevant_instance_variables
  instance_variables.reject{|var| var.to_s =~ /^@_|^@cukegator_analysis$/}
end

After do |scenario|
  @cukegator_analysis
  binding.pry
end

