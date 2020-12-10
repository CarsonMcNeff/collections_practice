def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort{|a,b| b <=> a}
end

def sort_array_char_count(array)
    array.sort do |a,b| 
        if a.length > b.length
            1
        elsif b.length > a.length
            -1
        else
            0
        end
    end
end

def swap_elements(array)
    array[1],array[2] = array[2],array[1]
    array
end

def swap_elements_from_to(array,index,dest)
    array[index],array[dest] = array[dest],array[index]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    newarray = []
    array.each do |string|
        string[2]="$"
        newarray.push(string)
    end
    newarray
end

def find_a(array)
    array.select do |str|
        str.start_with?("a")
    end
end

def sum_array(array)
    array.inject(:+)
end

def add_s(array)
    array.each_with_index.collect{|element,index| index != 1 ? element+="s": element}
end