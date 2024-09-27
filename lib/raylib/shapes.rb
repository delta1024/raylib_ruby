module Raylib
  raylib_function :draw_rectangle,     [:int, :int, :int, :int, Color.by_value]
  raylib_function :draw_rectangle_rec, [Rectangle.by_value, Color.by_value]
  raylib_function :draw_rectangle_pro, [Rectangle.by_value, Vector2.by_value, :float, Color.by_value]
end
