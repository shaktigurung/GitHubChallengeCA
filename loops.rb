#@require humanize
#require 'to_words'

# For questions 1 and 2 below use the following array:
shopping_list = ['1 cheese', '4 toilet paper', 'taco shells', 'sushi rolls', '3 avocados', 'soap', 'sparkling mineral water', '2 pineapples', 'toothpaste']

# 1) Use .each to loop through each item in the shopping_list and capitalise
#    all words in each item. Hint: work smarter not harder - check Stack Overflow
        shopping_list.each do |item|
            puts "Item: #{item.upcase}"
        end
# 2) Use while to loop through the shopping list and divide the shopping list
#    into multiple arrays according to item type. Print all of the arrays with a divider
#    between each and a total item count for each item.

            bathroom_items = []
            fruit = []
            dairy = []
            meals = []
            beverages = []
         i = 0
         while i < shopping_list.length do
           #Item = shopping_list[i]
         if (shopping_list[i] ==  "taco shells" || shopping_list[i] == "sushi rolls")
            #meals = Array.new()
            #meals[i] = shopping_list[i] 
            meals.push(shopping_list[i])
         elsif(shopping_list[i]== "toilet paper" || shopping_list[i]== "soap" || shopping_list[i]=="toothpaste")
            bathroom_items.push(shopping_list[i])
         elsif(shopping_list[i] == "cheese")
            dairy.push(shopping_list[i])
         elsif(shopping_list[i] == "3 avocados"|| shopping_list[i]== "2 pineapples")
             fruit.push(shopping_list[i])
         else(shopping_list[i] == "sparkling mineral water")
           beverages.push(shopping_list[i])
         end
         i += 1
         end
         puts "The meals items are #{meals}"
         puts "The bathroom_items items are #{bathroom_items} "
         puts "The dairy items are #{dairy} "
         puts "The fruit items are #{fruit} "     
         puts "The beverages items are #{beverages}"
    

# 3) Create an array of at least 20 integers.
#       Use a for loop to:
#         - find the average of all the integers
#         - find the sum of all the integers
#         - create an array of the same values as floats
#         - create an array of values that are multiplied by a randomly generated number

        ### Generate random number  ###

        random_number = rand(100)
        puts "Our random number for now is #{random_number}"
        array_int = Array.new(4)
        i = 0
        while(i < array_int.length )
            puts "Enter your array number >>"
            array_int[i] = gets.to_i
            i += 1
        end
        ## Changes array into float ###
        # while(i < array_int.length )
        #     puts "Enter your array number >>"
        #     array_int[i] = gets.to_f
        #     i += 1
        # end
        ### Multiplication of random number and array ###
        array_multiply = array_int.collect {|x| x * random_number}
        # sum_integer = array_int.sum
        # sum_average = sum_integer / array_int.length.to_f
        #array_multiply = array_int * random_number
        # puts "Array number are #{array_int}" 
        # puts "Array sum is  #{sum_integer}"
        # puts "Array average is  #{sum_average}"
        puts "Multiplication of the array and random number is >> #{array_multiply}"


# EXTENSION TASK
# Use a for loop to go through each item in the shopping_list, remove any number in the
# string and replace it with its corresponding word. For example: '3 avocados' will
# become 'three avocados'.
# Consider using RegEx.

        for i in 0..shopping_list.length
            #puts "#{shopping_list[i]}"
            index = /[0-9]/.match(shopping_list[i])
            
            if (index==3)
                shopping_list[i]= elements.sub!("3","Three")
                shopping_list[i].push
            elsif(index==2)
                shopping_list[i]= elements.sub!("2","Two")
                shopping_list[i].push
            end  
            # if ( index == true)
            #     shopping_list[i].push("Three")
            #     puts shopping_list[i]
            # end
            #puts "3 is in #{shopping_list[index]}"
            # if  /3/.match(shopping_list[i]) == true
            #     puts "3 is in #{index}"
            # end
        end

        ##### Final Program ####
        i=0
        for elements in shopping_list do
        if elements =~ /\d/
            if elements.slice(0).to_i ==1
            shopping_list[i]= elements.sub!("1","One")
            elsif elements.slice(0).to_i ==2
            shopping_list[i]= elements.sub!("2","Two")
            elsif elements.slice(0).to_i ==3
            shopping_list[i]= elements.sub!("3","Three")
            elsif elements.slice(0).to_i ==4
            shopping_list[i]= elements.sub!("4","Four")
            elsif elements.slice(0).to_i ==5
            shopping_list[i]= elements.sub!("5","Five")
            elsif elements.slice(0).to_i ==6
            shopping_list[i]= elements.sub!("6","Six")
             elsif elements.slice(0).to_i ==7
            shopping_list[i]= elements.sub!("7","Seven")
            elsif elements.slice(0).to_i ==8
            shopping_list[i]= elements.sub!("8","Eight")
            elsif elements.slice(0).to_i ==9
            shopping_list[i]= elements.sub!("9","Nine")
            end
        end
        i +=1
        end
        puts shopping_list
