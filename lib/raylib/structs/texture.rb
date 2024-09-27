module Raylib
  class Texture < FFI::Struct
    extend Accessable
    extend Creatable
    layout :id, :uint,
      :width, :int,
      :height, :int,
      :mipmaps, :int,
      :format, :int
    make_accessor :id, :width, :height, :mipmaps, :format
  end
  class RenderTexture < FFI::Struct
    extend Accessable
    extend Creatable
    layout :id, :uint,
      :texture, Texture,
      :depth, Texture
    make_accessor :id, :texture, :depth
  end
end
