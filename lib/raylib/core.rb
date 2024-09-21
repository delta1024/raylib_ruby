module Raylib
  attach_function :InitWindow, [:int, :int, :string], :void
  attach_function :CloseWindow, [], :void
  attach_function :WindowShouldClose, [], :bool
end
