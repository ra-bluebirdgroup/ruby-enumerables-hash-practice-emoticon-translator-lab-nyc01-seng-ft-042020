# require modules here
# require 'pry'
require 'yaml'
#emoticons = YAML::load_file(File.join(__dir__, 'emoticons.yml'))
#emoticons = YAML.load('emoticons.yml')
emoticons = YAML.load('emoticons.yml')

def load_library(emoticons)
  new_hash = {}
  JSON.parse(emoticons.gsub("=>", ":").gsub(":nil,", ":null,"))
end


#
# def get_japanese_emoticon
#   # code goes here
# end
#
# def get_english_meaning
#   # code goes here
# end
