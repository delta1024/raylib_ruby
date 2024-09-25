module Raylib
  TraceLogLevel = enum  [
    :log_all,
    :log_trace,
    :log_debug,
    :log_info,
    :log_warning,
    :log_error,
    :log_fatal,
    :log_none
  ]
  module ConfigFlags
    extend FFI::Library
    Flags = enum [
      :VSYNC_HINT               , 0x00000040,
      :FULLSCREEN_MODE          , 0x00000002,
      :WINDOW_RESIZABLE         , 0x00000004,
      :WINDOW_UNDECORATED       , 0x00000008,
      :WINDOW_HIDDEN            , 0x00000080,
      :WINDOW_MINIMIZED         , 0x00000200,
      :WINDOW_MAXIMIZED         , 0x00000400,
      :WINDOW_UNFOCUSED         , 0x00000800,
      :WINDOW_TOPMOST           , 0x00001000,
      :WINDOW_ALWAYS_RUN        , 0x00000100,
      :WINDOW_TRANSPARENT       , 0x00000010,
      :WINDOW_HIGHDPI           , 0x00002000,
      :WINDOW_MOUSE_PASSTHROUGH , 0x00004000,
      :BORDERLESS_WINDOWED_MODE , 0x00008000,
      :MSAA_4X_HINT             , 0x00000020,
      :INTERLACED_HINT          , 0x00010000 
    ]
    def ConfigFlags.const_missing(sym)
      value = enum_value( sym )
      return super unless value
      value
    end
  end
end
