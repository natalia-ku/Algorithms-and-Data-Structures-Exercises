# check if a two strings are substrings of each other.
#After, check if one string is a rotation of another.”
# For example, “forinterviewscoding”, “interviewscodingfor”
# and “dingforinterviewsco” are all valid rotations of the string
 # “codingforinterviews”, while “codngiforinterviews” is not.


 def is_substring?(string1, string2)
   if string1.length < string2.length
     return string2.include?(string1)
   end
    return string1.include?(string2)
 end


 def is_rotation?(string1,string2)
   if  string1.length != string2.length
     return false
   end
   return is_substring?(string1+string1, string2)
 end
