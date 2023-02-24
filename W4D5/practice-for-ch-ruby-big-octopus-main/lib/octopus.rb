#Sluggish octopus "O(n^2) "

def longest_fish(arr)
    arr.each_with_index do |fish1, idx1|
        max = true
        arr.each_with_index do |fish2, idx2| 
            if idx2 > idx1 && fish2.length > fish1.length 
                max = false
            end
        end
        return fish1 if max == true
    end
end

p longest_fish(["salmon", "trout", "shark", "albatross", "bass"])

#Dominant octopus "O(n log n)"

def merge_fish(arr, &prc)
    prc ||= Proc.new {|a,b| a <=> b}
    return arr if arr.length <= 1
    mid = arr.length / 2
    lh = arr[0...mid]
    rh = arr[mid..-1] 
    lh_sorted = merge_fish(lh, &prc) 
    rh_sorted = merge_fish(rh, &prc) 
    merge(lh_sorted, rh_sorted, &prc)
end

def merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty? 
        if prc.call(left.first, right.first) == -1
            merged << left.shift 
        elsif prc.call(left.first, right.first) == 0
            merged << left.shift 
        else  
            merged << right.shift
        end
    end
    merged.concat(left)
    merged.concat(right)
    merged
end

def dominant_octopus(fishes)
    prc = Proc.new{|fish_1, fish_2| fish_2.length <=> fish_1.length}
    merge_fish(fishes, &prc)[0]
end

p dominant_octopus(["salmon", "trout", "shark", "albatross", "bass"])

#Clever octopus "O(n)"

def linear_search(fishes)
    longest_fish = fishes.first 

    fishes.each do |fish|
        if fish.length > longest_fish.length 
            longest_fish = fish
        end
    end
    longest_fish
end

p linear_search(["salmon", "trout", "shark", "albatross", "bass"])

#Dancing octopus

#Slow dance

def slow_dance(target, moves)
    moves.each_with_index do |move, i| 
        if move == target 
            return i
        end
    end
end
moves = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]
p slow_dance("up", moves) #0
p slow_dance("right-down", moves) #3

#Fast dance

moves_hash = {
"up" => 0, 
"right-up" => 1, 
"right" => 2, 
"right-down" => 3, 
"down" => 4, 
"left-down" => 5, 
"left" => 6,  
"left-up" => 7
} 

def fast_dance(target, data_structure)
    data_structure[target]
end

p fast_dance("up", moves_hash) #0
p fast_dance("right-down", moves_hash) #3

