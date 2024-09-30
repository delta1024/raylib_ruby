module Raylib
  class Vector2 < FFI::Struct
    extend Accessable
    extend Creatable
    layout :x, :float,
      :y, :float
    make_accessor :x, :y
    def self.from(x, y=0)
      if x.is_a? Array
        x, y = x
      end
      self.create do |v|
        v.x = x
        v.y = y
      end
    end
    def inspect
      "<Vector2 x: #{x}, y: #{y}>"
    end
  end
  class Vector3 < FFI::Struct
    extend Accessable
    extend Creatable
    layout :x, :float,
      :y, :float,
      :z, :float
    make_accessor :x, :y, :z
    def self.from(x, y=0,z=0)
      if x.is_a? Array
        x, y, z =  x
      end
      self.create do |v|
        v.x = x
        v.y = y
        v.z = z
      end
    end
    def inspect
      "<Vector3 x: #{x}, y: #{y}, z: #{z}>"
    end
  end
  class Vector4 < FFI::Struct
    extend Accessable
    extend Creatable
    layout :x, :float,
      :y, :float,
      :z, :float,
      :w, :float
    make_accessor :x, :y, :z, :w
    def self.from(x, y=0,z=0,w=0)
      if x.is_a? Array
        x, y, z, w = x
      end
      self.create do |v|
        v.x = x
        v.y = y
        v.z = z
        v.w = w
      end
    end
    def inspect
      "<Vector4 x: #{x}, y: #{y}, z: #{z}, w: #{w}>"
    end
  end
end
