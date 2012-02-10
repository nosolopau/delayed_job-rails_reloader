require 'delayed/plugin'

module Delayed
  module RailsReloader
    
    class Plugin < Delayed::Plugin
      callbacks do |lifecycle|            
        lifecycle.around(:perform) do |worker, job, &block|
          begin
            ActionDispatch::Reloader.prepare!
            block.call
          ensure
            ActionDispatch::Reloader.cleanup!
          end
        end
      end
    end

  end
end