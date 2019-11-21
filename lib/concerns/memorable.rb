module Memorable
  # had to remove self. at the beginning of these method names once I moved them there to a module
 
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
  
    def initialize
      self.class.all << self
    end
  end

end
