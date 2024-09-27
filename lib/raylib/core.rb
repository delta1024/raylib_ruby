module Raylib
  raylib_function :init_window,         [:int, :int, :string], :void
  raylib_function :close_window,        [],                    :void
  raylib_function :window_should_close, [],                    :bool
  raylib_function :set_window_state,    [ConfigFlags::Flags],  :void
  raylib_function :set_trace_log_level, [TraceLogLevel],       :void
  raylib_function :begin_drawing,       [],                    :void
  raylib_function :end_drawing,         [],                    :void
  raylib_function :clear_background,    [Color.by_value],      :void
end
