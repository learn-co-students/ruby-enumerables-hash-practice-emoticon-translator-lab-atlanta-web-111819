# require modules here
require "yaml"

def load_library(path)
  mot_lib = {"get_meaning" => {}, 
  "get_emoticon" => {}
  }
  
  YAML.load_file(path).each {|meaning, japmeaning|
    eng, jap = japmeaning
    mot_lib["get_meaning"][jap] = meaning
    mot_lib["get_emoticon"][eng] = jap
  }
  return mot_lib
end

def get_japanese_emoticon(path, emote)
  emote_lib = load_library(path)
  answer = emote_lib["get_emoticon"][emote]
  if answer
    return answer
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emote)
  emote_lib = load_library(path)
  answer = emote_lib["get_meaning"][emote]
  if answer
    return answer
  else
    return "Sorry, that emoticon was not found"
  end
end