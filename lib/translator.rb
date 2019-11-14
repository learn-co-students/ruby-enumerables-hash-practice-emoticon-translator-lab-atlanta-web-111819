require "yaml"
require 'pry'

def load_library(library)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(library).each do |meaning, describe|
    describe.each do |something|
      english, japanese = syntax
binding.pry
end
end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
