# Part I - Print a single item from the following arrays:

# Use the following array of Kardashians for exercises 1 - 5
kardashians = ['Kim', 'Robert', 'Khloé', 'Rob', 'Kourtney']

# 1) Find two ways to access and print the 'Kim' value.
        puts kardashians [0]
        puts kardashians.first
        puts kardashians[-5]


# 2) Find two ways to remove the male names from the Kardashians.
        kardashians.delete('Robert')
        kardashians.delete('Rob')
        kardashians.delete_at(1)
        kardashians.delete_at(3)
        puts kardashians

# karshahians -= %w(Robert Rob)

# 3) Remove one Kardashian, print the names and then add them back to the Array:
        kardashians.pop
        puts " #{kardashians} after delete"
        kardashians.push('Kourtney')
        puts kardashians 

# 4) Take the last Kardashian and make them the first, print the result.
        kardashians.reverse!
        puts kardashians.rotate(-1)
        puts "########"
        puts kardashians 
        last = kasdashians.pop
        kardashians.unshift(last)
# 5) Find a way to count the number of items in the array that begin with the letter 'K'
    
        puts kardashians.select { |n| n[0] == ?K }
        puts (kardashians.select { |n| n[0] == ?K }).count
        puts kardashians.count { |x| x[0] == "k"}