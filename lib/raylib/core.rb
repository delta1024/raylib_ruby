module Raylib
  raylib_function :init_window,         [:int, :int, :string]
  raylib_void_functions :close_window, :begin_drawing, :end_drawing
  raylib_bool_functions :window_should_close
  raylib_function :set_window_state,    [ConfigFlags::Flags]
  raylib_function :set_trace_log_level, [TraceLogLevel]
  raylib_function :clear_background,    [Color.by_value]
end
