require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class TinyMce < Administrate::Field::Base
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript 'administrate-field-tiny_mce/application'
      end

      def to_s
        data
      end
    end
  end
end