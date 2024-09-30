module Raylib
  class Color < FFI::Struct
    extend Accessable
    extend Creatable
    layout :r, :uchar,
      :g, :uchar,
      :b, :uchar,
      :a, :uchar
    make_accessor :r, :g, :b, :a
    def inspect
      "<Color r: #{r}, g: #{g}, b: #{b}, a: #{a}>"
    end
    def self.from (r, g = 0, b = 0, a = 0)
      if r.is_a? Array
        r, g, b, a = r
      end
      Color.create do |c|
        c.r = r
        c.g = g
        c.b = b
        c.a = a
      end
    end
  end
end
