require "base64"

file = File.read('/Users/alanramirez/Documents/Otros/perfil.jpg')
codedFile = Base64.encode64(file)

puts codedFile 
