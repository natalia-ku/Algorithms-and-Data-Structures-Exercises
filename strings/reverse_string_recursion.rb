def reverse (string)
  if string.length < 2
    return string
  else
    return "#{string[-1]}#{reverse(string[0...-1])}"
  end
end

print reverse("Such a beautiful day today!")
