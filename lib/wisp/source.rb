module Wisp
  module Source
    def self.bundled_path
      File.expand_path "../../../vendor/wisp.js", __FILE__
    end
  end
end
