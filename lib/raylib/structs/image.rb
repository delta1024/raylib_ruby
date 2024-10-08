module Raylib
  class Image < FFI::Struct
    extend Accessable
    extend Creatable
    layout :data, :pointer,
      :width, :int,
      :height, :int,
      :mipmaps, :int,
      :format, :int
    make_accessor :data, :width, :height, :mipmaps, :format
  end
end
