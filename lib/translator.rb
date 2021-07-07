require 'yaml'
require 'pp'

def load_library(file)
  emoticons = YAML.load_file(file)
  meanings = emoticons.map {|name, equivalents| [equivalents[1], name] }.to_h
  emotes = emoticons.map {|name, equivalents| [equivalents[0], equivalents[1]]}.to_h
  e = {get_meaning: meanings, get_emoticon: emotes}
  #pp e
  e
end

def get_japanese_emoticon(file, english_emote)
  emoticons = load_library(file)
  e = emoticons[:get_emoticon][english_emote]
  e ? e : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, japan_emote)
  emoticons = load_library(file)
  e = emoticons[:get_meaning][japan_emote]
  e ? e : "Sorry, that emoticon was not found"
end
