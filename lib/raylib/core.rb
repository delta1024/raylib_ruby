module Raylib
  attach_function :init_window,         :InitWindow,        [:int, :int, :string], :void
  attach_function :close_window,        :CloseWindow,       [],                    :void
  attach_function :window_should_close, :WindowShouldClose, [],                    :bool
  attach_function :set_window_state,    :SetWindowState,    [ConfigFlags::Flags],  :void
  attach_function :set_trace_log_level, :SetTraceLogLevel,  [TraceLogLevel],       :void
  attach_function :begin_drawing,       :BeginDrawing,      [],                    :void
  attach_function :end_drawing,         :EndDrawing,        [],                    :void
  attach_function :clear_background,    :ClearBackground,   [Color.by_value],      :void
end
