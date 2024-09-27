module Raylib
  class NPatchInfo < FFI::Struct
    extend Accessable
    extend Creatable
    layout :source, Rectangle,
           :left,   :int,
           :top,    :int,
           :right,  :int,
           :bottom, :int,
           :layout, :int
    make_accessor :source, :left, :top, :right, :bottom, :layout
  end
end
