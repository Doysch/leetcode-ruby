def roman_to_int(s)
  #     1. make a hash of symbols and values of rom numerals
    romNums = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }
#     2. Initialise a variable for total (sum)
#     3. Initialise a variable for a temporary calculation (diff)

  sum = 0
  diff = 0

#     4. Iterate through the characters string being passed into method
#     5. If there is a character in the string which exists (i.e. you are
#     not at the end of the string) AND if the character following the current
#     character is larger (in terms of it's roman numeric value) than the current
#     character, then assign the value of current character to variable 'diff' to be
#     used in #6
#     6. Else (i.e. the current character is the same or bigger than the character
#     following the current character), then add the value of the current character
#     to the total, minus the variable diff's value from #5
#     7. Reassign the value of diff to 0 so that it is not carried through to the
#     next iteration
#     8. Return the sum
#
  s.chars.each_with_index do |el, i|
    if romNums[s[i + 1]] && romNums[s[i + 1]] > romNums[el]
      diff = romNums[el]
    else
      sum += (romNums[el] - diff)
      diff = 0
    end
  end
  sum
end
