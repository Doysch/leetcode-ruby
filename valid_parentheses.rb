# 🤓 Challenge instructions here: https://leetcode.com/problems/valid-parentheses/

def is_valid(s)
  arr = []
  s.chars.each do |char|
    last_checked = arr[-1]
    if (char == "(" || char =="{" || char == "[")
      arr.push(char)
    elsif (char == ")" && last_checked == "(" || char == "}" && last_checked == "{" || char == "]" && last_checked == "[" )
      arr.pop
    else
     return false
    end
  end
arr.empty?
end

# 1. Declare an empty array
# 2. Iterate through every element (char) of the string
# 3. Assign the last element of the array to a variable called last_checked (we will use this later)
# 4. Check if the element is an opening bracket, if so put it into the array (arr)
# 5. If the current element is a closing bracket, check whether it is the closing bracket for thr same type of opening bracket that is the last element in the array. If it is then take that element out of the array (pop)
# 6. If none of these conditions run true, then return false
# 7. If the array is empty, return true. If it contains elements return false.
#    Remember that characters are popped from the array when the opening brackets are closed by the same type of closing bracket
