require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
    emots = {}
    
    emots["get_emoticon"] = Hash.new 
    emots["get_meaning"] = Hash.new 
    
    emoticons.each do |english_word, emoticon_set|
      emots["get_emoticon"][emoticon_set.first] = emoticon_set.last 
      emots["get_meaning"][emoticon_set.last] = english_word
  end
  emots
  
end

def get_japanese_emoticon(path, emoticon)
  emots = load_library(path)
  result = emots["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
end
return result
end

def get_english_meaning(path, emoticon)
 emots = load_library(path)
  result = emots["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
end
return result 
end