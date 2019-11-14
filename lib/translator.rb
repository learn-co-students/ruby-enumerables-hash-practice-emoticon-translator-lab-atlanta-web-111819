require "yaml"
require 'pry'

def load_library(library)
  #Load YAML file
  emoticons = YAML.load_file(library)
  # We must create a new hash from scratch with the two keys "get_emoticon"
  # and "get_meaning"
  emoji_hash = Hash.new
  #Set the keys of new_Hash
  emoji_hash["get_emoticon"] = Hash.new
  emoji_hash["get_meaning"] = Hash.new

  emoticons.each do |english, emoticons|
    emoji_hash["get_emoticon"][emoticons[0]] = emoticons[1]
    emoji_hash["get_meaning"][emoticons[1]] = english
  end
emoji_hash
end

def get_japanese_emoticon(library, emoticon)
  #Call the load_library method
  emoji_hash = load_library(library)
  input = emoji_hash["get_emoticon"][emoticon]
  if input == nil
    input = "Sorry, that emoticon was not found"
  end
  return input
end

def get_english_meaning(library, emoticon)
  #Call the load_library method
  emoji_hash = load_library(library)
  input = emoji_hash["get_meaning"][emoticon]
  if input == nil
    input = "Sorry, that emoticon was not found"
  end
  return input
end
