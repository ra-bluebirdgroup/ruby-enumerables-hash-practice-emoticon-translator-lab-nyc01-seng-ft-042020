# require modules here
# require 'pry'
require 'yaml'
#emoticons = YAML::load_file(File.join(__dir__, 'emoticons.yml'))
#emoticons = YAML.load('emoticons.yml')
emoticons = YAML.load_file('emoticons.yml')
def load_library(emoticons)
  new_hash = {}

  emoticons.each do |name|
    if !new_hash.has_key?(name)
      new_hash[name] = {}
    end
    name.each do |array|
       if !new_hash[name].has_key?(:english)
         new_hash[name][:english] = array[0]
       end

       if !new_hash[name].has_key?(:japanese)
         new_hash[name][:japanese] = array[0]
       end

     end
   end
 puts new_hash

end
load_library(emoticons)

#
# def get_japanese_emoticon
#   # code goes here
# end
#
# def get_english_meaning
#   # code goes here
# end
