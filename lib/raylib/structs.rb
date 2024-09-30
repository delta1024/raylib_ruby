module Raylib
  module Accessable
    def make_accessor(*attrs)
      not_provided = Object.new
      attrs.each do |attr|
        define_method "#{attr}" do 
            send("[]", attr)
        end
        define_method "#{attr}=" do |val|
          send("[]=", attr, val)
        end
      end
    end
  end
  module Creatable
    def create(&block)
      obj = self.new
      obj.instance_eval(&block)
      obj
    end
  end
end

require_relative "structs/vector"
require_relative "structs/matrix"
require_relative "structs/color"
require_relative "structs/rectangle"

require_relative "structs/image"
require_relative "structs/texture"
require_relative "structs/n_patch_info"
#    struct GlyphInfo;              // GlyphInfo, font characters glyphs info
#    struct Font;                   // Font, font texture and GlyphInfo array data
#
#    struct Camera3D;               // Camera, defines position/orientation in 3d space
#
#    struct Camera2D;               // Camera2D, defines position/orientation in 2d space
#    struct Mesh;                   // Mesh, vertex data and vao/vbo
#    struct Shader;                 // Shader
#    struct MaterialMap;            // MaterialMap
#    struct Material;               // Material, includes shader and maps
#    struct Transform;              // Transform, vertex transformation data
#    struct BoneInfo;               // Bone, skeletal animation bone
#    struct Model;                  // Model, meshes, materials and animation data
#    struct ModelAnimation;         // ModelAnimation
#    struct Ray;                    // Ray, ray for raycasting
#    struct RayCollision;           // RayCollision, ray hit information
#    struct BoundingBox;            // BoundingBox
#
#    struct Wave;                   // Wave, audio wave data
#    struct AudioStream;            // AudioStream, custom audio stream
#    struct Sound;                  // Sound
#    struct Music;                  // Music, audio stream, anything longer than ~10 seconds should be streamed
#
#    struct VrDeviceInfo;           // VrDeviceInfo, Head-Mounted-Display device parameters
#    struct VrStereoConfig;         // VrStereoConfig, VR stereo rendering configuration for simulator
#
#    struct FilePathList;           // File path list
#
#    struct AutomationEvent;        // Automation event
#    struct AutomationEventList;    // Automation event list
