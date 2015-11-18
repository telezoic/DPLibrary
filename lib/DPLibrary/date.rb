module DPLibrary
  class Date
    attr_accessor :begin,
                  :displayDate,
                  :end
    
    def initialize(hash)
      set_values(hash)
    end

    def set_values(hash)
      if hash.is_a?(Array) 
        set_values(hash[0])
      end
      if !(hash.nil? or hash.is_a?(Array))
        self.begin = hash['begin']
        self.displayDate = hash['displayDate']
        self.end = hash['end']
      end
    end
  end
end
