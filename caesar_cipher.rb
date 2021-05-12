# caesar_cipher.rb

require 'pry'


user_input = gets.chomp
shift_five = gets.chomp.to_i


def caesar_cipher(user_input, shift_five)

    
    alphabet_hash = {
        "a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4,
        "f" => 5, "g" => 6, "h" => 7, "i" => 8, "j" => 9,
        "k" => 10, "l" => 11, "m" => 12, "n" => 13, "o" => 14,
        "p" => 15, "q" => 16, "r" => 17, "s" => 18, "t" => 19,
        "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24,
        "z" => 25
    }
    
    alphabet_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]


    final_array = []
    split_array = user_input.split(//) # Split string into array for evaluation


    # START ARRAY ITERATION HERE

    split_array.each { |value|

        test_char = value

        if alphabet_array.include? test_char # change condition to reflect any character in the array

            lower_case = test_char.downcase


            # Test whether or not test_char is uppercase or lowercase, return boolean for use later
            change_later = test_char.eql?(lower_case)

            # if change_later is false, the test_char is uppercase CHANGE TO LowerCase
            if change_later == false
                test_char = lower_case
            end


            # if change_later is true, the test_char is lowercase DO NOT CHANGE
            # test_shift defines newest integer position in alphabet_hash 
            test_shift = alphabet_hash[test_char] + shift_five

            # "Wraps" around alphabet by utilizing modulous operation
            if test_shift > 25
                test_shift = (test_shift % 25) + -1
            end


            new_value = alphabet_array[test_shift]


            if change_later == false
                new_value = alphabet_array[test_shift].upcase
            end


            final_array = final_array.push(new_value)

        # REMOVED END

        else # this condition executes for all othe character not in the array
            
            final_array = final_array.push(test_char)
        
        end

    }

        # END ARRAY ITERATION HERE
        final_array = final_array.join

        # PRINTS FINAL VALUE, needs to work with spaces 
        puts final_array

end


caesar_cipher(user_input, shift_five) # CAESAR_CIPHER METHOD CALL


    