require 'net/http'

def getTopicCount(topic)
  uri = URI("https://en.wikipedia.org/w/api.php?action=parse&section=0&prop=text&format=json&page=#{topic}")
  res = Net::HTTP.get(uri)
  puts res
  ans = res.scan(/(?=#{topic})/).count
end

puts(getTopicCount("pizza"))
