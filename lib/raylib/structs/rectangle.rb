module Raylib
  class Rectangle < FFI::Struct
    extend Accessable
    extend Creatable
    layout :x,      :float,
      :y,      :float,
      :width,  :float,
      :height, :float
    make_accessor :x, :y, :width, :height
    def inspect()
      return "<Rectangle x: #{self[:x]} y: #{self[:y]}, width: #{self[:width]}, height: #{self[:height]}>"
    end
    def self.from (x, y = 0, width = 0, height = 0)
      if x.is_a? Array
        x, y, width, height = x
      end
      self.create do |r|
        r.x      = x
        r.y      = y
        r.width  = width
        r.height = height
      end
    end
  end
end
