module Raylib
  module Accessable
    def make_accessor(*attrs)
      not_provided = Object.new
      attrs.each do |attr|
        define_method "#{attr}" do |value = not_provided|
          if value === not_provided
            send("[]", attr)
          elsif
            send("[]=", attr, value)
          end
        end
        define_method "#{attr}=" do |val|
          send("[]=", attr, val)
        end
      end
    end
  end
  module Creatable
    def create(&block)
      obj = self.new
      obj.instance_eval(&block)
      obj
    end
  end
end
require_relative "structs/rectangle"
require_relative "structs/color"
require_relative "structs/texture"
require_relative "structs/image"
require_relative "structs/vector"
require_relative "structs/matrix"
