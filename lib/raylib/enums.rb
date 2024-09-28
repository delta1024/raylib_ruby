require_relative "enums/config_flags"
require_relative "enums/keyboard_keys"
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
end
