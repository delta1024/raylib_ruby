module Raylib
  attach_function :draw_rectangle,     :DrawRectangle,    [:int, :int, :int, :int, Color.by_value],                       :void
  attach_function :draw_rectangle_rec, :DrawRectangleRec, [Rectangle.by_value, Color.by_value],                           :void
  attach_function :draw_rectangle_pro, :DrawRectanglePro, [Rectangle.by_value, Vector2.by_value, :float, Color.by_value], :void
end
