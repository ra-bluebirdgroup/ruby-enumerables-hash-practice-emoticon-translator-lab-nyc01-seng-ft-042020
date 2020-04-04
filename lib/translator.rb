# require modules here
# require 'pry'
require 'yaml'
#emoticons = YAML::load_file(File.join(__dir__, 'emoticons.yml'))
lib = './lib/emoticons.yml'


def load_library(lib)
  emoticons = YAML.load_file(lib)
  new_hash = {}
   emoticons.each do |name, versions|


       if !new_hash.has_key?(name)
         new_hash[name]={}
       end

      if !new_hash[name].has_key?(:english)
        new_hash[name][:english] = versions[0]
       end

       if !new_hash[name].has_key?(:japanese)
         new_hash[name][:japanese] = versions[1]
        end


   end
 p new_hash

end

def get_english_meaning(lib, emoticon)
   emoticons = load_library(lib)
   translation = ""
   emoticons.each do |name, versions|
     version.each do |version, emoticon_version|
     if emoticon_version.include?(emoticon) 
       p version[1]

     else 
       p  "Sorry, that emoticon was not found"
end
