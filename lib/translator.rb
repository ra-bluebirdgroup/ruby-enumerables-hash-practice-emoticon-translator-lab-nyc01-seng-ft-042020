# require modules here
# require 'pry'
require 'yaml'
#emoticons = YAML::load_file(File.join(__dir__, 'emoticons.yml'))
lib = './lib/emoticons.yml'


def load_library(lib)
  emoticons = YAML.load_file(lib)
  new_hash = {}
   emoticons.each do |name, versions|
     #translation.each do |lang|

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
 p new_hash

end

# def get_english_meaning(lib, emoticon)
# end
