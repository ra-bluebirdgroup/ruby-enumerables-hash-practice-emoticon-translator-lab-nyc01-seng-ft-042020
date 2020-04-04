# require modules here
# require 'pry'
require 'yaml'
emoticons = YAML::load_file(File.join(__dir__, 'emoticons.yml'))
file_path = 'emoticons.yml'


def load_library(emoticons)
  new_hash = {}
   emoticons.each do |name, translation|
     translation.each do |lang|

       if !new_hash.has_key?(name)
         new_hash[name]={}
       end

      if !new_hash[name].has_key?(:english)
        new_hash[name][:english] = translation[0]
       end

       if !new_hash[name].has_key?(:japanese)
         new_hash[name][:japanese] = translation[1]
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
