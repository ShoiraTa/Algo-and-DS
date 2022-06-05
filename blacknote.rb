def name_shuffler(str)
  return str.split(' ').reverse().join(' ')
end
  p name_shuffler('john McClane')