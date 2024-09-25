module Raylib
  class Vector2 < FFI::Struct
    layout :x, :float,
      :y, :float
    make_accessor :x, :y
    def self.from(x_, y_=0)
      if x_.is_a? Array
        self.from *x_
      else
        self.create do
          x x_
          y y_
        end
      end
    end
    def inspect
      "<Vector2 x: #{x}, y: #{y}>"
    end
  end
  class Vector3 < FFI::Struct
    layout :x, :float,
      :y, :float,
      :z, :float
    make_accessor :x, :y, :z
    def self.from(x_, y_=0,z_=0)
      if x_.is_a? Array
        self.from *x_
      else
        self.create do
          x x_
          y y_
          z z_
        end
      end
    end
    def inspect
      "<Vector3 x: #{x}, y: #{y}, z: #{z}>"
    end
  end
  class Vector4 < FFI::Struct
    layout :x, :float,
      :y, :float,
      :z, :float,
      :w, :float
    make_accessor :x, :y, :z, :w
    def self.from(x_, y_=0,z_=0,w_=0)
      if x_.is_a? Array
        self.from *x_
      else
        self.create do
          x x_
          y y_
          z z_
          w w_
        end
      end
    end
    def inspect
      "<Vector4 x: #{x}, y: #{y}, z: #{z}, w: #{w}>"
    end
  end
end
