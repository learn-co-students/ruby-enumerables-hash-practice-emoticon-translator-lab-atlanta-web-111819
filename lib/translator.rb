require 'yaml'
require 'pry'


def load_library(path)
  emoticons = yaml.load_file(path)
  emoticon_hash = hash.new
  
  emoticon_hash["get_emoticon"] = hash.new
  emontican_hash['get_meaning'] = hash.new

emoticons.each do |english_word, emonticon_set|
emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
end
emoticon_hash


def get_japanese_emoticon(path, emoticon)
 emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning(path, emoticon)
 emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end