module Findable
    def find_by_name(name)
        SONGS.detect{|a| a.name == name }
    end
end