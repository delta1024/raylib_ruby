module Raylib
  class Matrix < FFI::Struct
    extend Accessable
    extend Creatable
    layout :m0, :float, :m4, :float, :m8, :float, :m12, :float,
      :m1, :float, :m5, :float, :m9, :float, :m13, :float,
      :m2, :float, :m6, :float, :m10, :float, :m14, :float,
      :m3, :float, :m7, :float, :m11, :float, :m15, :float
    make_accessor :m0,  :m4,  :m8,  :m12, 
      :m1,  :m5,  :m9,  :m13, 
      :m2,  :m6,  :m10,  :m14, 
      :m3,  :m7,  :m11,  :m15
  end
end
