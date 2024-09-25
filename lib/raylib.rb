# frozen_string_literal: true

require "ffi"
require_relative "raylib/version"
module Raylib
  extend FFI::Library
  ffi_lib 'raylib'
end
require_relative "raylib/enums"
require_relative "raylib/structs"
require_relative "raylib/colors"
require_relative "raylib/core"
require_relative "raylib/shapes"

