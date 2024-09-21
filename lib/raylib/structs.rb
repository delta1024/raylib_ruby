module Raylib
  class Rectangle < FFI::Struct
    layout :x,      :float,
           :y,      :float,
           :width,  :float,
           :height, :float
    def inspect
      puts "<Rectangle x=#{self[:x]} y=#{self[:y]} width=#{self[:width]} height=#{self[:height]}>"
    end
  end
end
