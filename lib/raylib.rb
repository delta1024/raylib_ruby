# frozen_string_literal: true

require "ffi"
module Raylib 
  class FFI::Struct
    def method_missing(method_name, *args)
      str = method_name.to_s
      member = str.match( /^([a-z0-9_]+)/i )[1].to_sym
      super unless members.include? member
      (str =~ /=$/) ? send(:[]=, member, *args) : send(:[], member)
    end
  end
end

require_relative "raylib/version"
require_relative "raylib/structs"
module Raylib
  extend FFI::Library
  ffi_lib 'raylib'
end
require_relative "raylib/core"

