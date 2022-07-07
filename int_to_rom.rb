def run(n)
    roman_numbers = {
1000 => "M",
900 => "CM",
500 => "D",
400 => "CD",
100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
}
roman = ""
roman_numbers.each do |value, letter|
  roman << letter*(n / value)
  n = n % value
  end
roman

#     n_in_roman_alphabet = nil
# return n_in_roman_alphabet
end

p run(3500)
