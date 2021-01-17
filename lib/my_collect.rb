def my_collect(array)
    collection =[]
    if block_given?
        int = 0
        while int < array.length
            collection << yield(array[int])
            int += 1 
        end
        collection
    else
        print "No block given!"
    end
end

my_collect(["Tim", "Tom", "Jim"]) do |name|
    name.split(" ").first
end






