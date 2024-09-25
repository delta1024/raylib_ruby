module Raylib
  class Rectangle < FFI::Struct
    layout :x,      :float,
      :y,      :float,
      :width,  :float,
      :height, :float
    make_accessor :x, :y, :width, :height
    def inspect()
      return "<Rectangle x: #{self[:x]} y: #{self[:y]}, width: #{self[:width]}, height: #{self[:height]}>"
    end
    def self.from (x_, y_ = 0, width_ = 0, height_ = 0)
      if x_.is_a? Array
        self.from *x_
      else
        self.create do
          x      x_
          y      y_
          width  width_
          height height_
        end
      end
    end
  end
end
