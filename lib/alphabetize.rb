def transform(word)
obj = {
  'ĉ' => 'c',
  'ĝ' => 'g',
  'ĥ' => 'h',
  'ĵ' => 'j',
  'ŝ' => 's',
  'ŭ' => 'u'
}

str = ''
word.downcase.chars do |x|
  if not obj[x].nil?
    str += obj[x]
  else
    str += x
  end
end
  str
end

def alphabetize(arr)
  # code here
  arr.sort! { |a,b| transform(a) <=> transform(b)} 
end
