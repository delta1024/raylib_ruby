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
    def self.from (r_, g_ = 0, b_ = 0, a_ = 0)
      if r_.is_a? Array
        self.from *r_
      else
        Color.create do 
          r r_
          g g_
          b b_
          a a_
        end
      end
    end
  end
end
