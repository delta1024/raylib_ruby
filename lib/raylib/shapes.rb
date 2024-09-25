module Raylib
  attach_function :draw_rectangle, :DrawRectangle, [:int, :int, :int, :int, Color.by_value], :void
end
