module Raylib
  class Texture < FFI::Struct
    layout :id, :uint,
      :width, :int,
      :height, :int,
      :mipmaps, :int,
      :format, :int
    make_accessor :id, :width, :height, :mipmaps, :format
  end
  class RenderTexture < FFI::Struct
    layout :id, :uint,
      :texture, Texture,
      :depth, Texture
    make_accessor :id, :texture, :depth
  end
end
