class LRUCache
    def initialize(size)
        @size = size
        @cache = []
    end

    def count
      @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el  
        elsif count >= @size 
            @cache.shift
            @cache << el  
        else  
            @cache << el
        end
    end

    def show
      p @cache
    end
  end

  # LRU (oldest) items at the front (left) of array
  # delete (shift) LRU items if count >= size 
  # add items using shovel 