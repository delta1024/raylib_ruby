# frozen_string_literal: true

require "ffi"
require_relative "raylib/version"
module Raylib
  extend FFI::Library
  ffi_lib 'raylib'
  def self.raylib_function(name, args, ret)
    fn_name = name.to_s.split('_').map {|s| s.capitalize}.join('').to_sym
    attach_function name, fn_name, args, ret
  end
end
require_relative "raylib/enums"
require_relative "raylib/structs"
require_relative "raylib/colors"
require_relative "raylib/core"
require_relative "raylib/shapes"

