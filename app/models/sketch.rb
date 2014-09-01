class Sketch < ActiveRecord::Base
  mount_uploader :sketch, SketchUploader
end
