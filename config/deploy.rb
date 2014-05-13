load "config.rb"
load "config/deploy/xp5k.rb"
load "config/lib/spinner.rb"


# relative to the capfile
set :recipes_path, "./bower_components"

# Enable pretty output. Remove it if you want full logging
#logger.level = Logger::IMPORTANT
#STDOUT.sync



# load recipes
recipes = Dir.glob("#{recipes_path}/*");
recipes.each do |recipe|
    load "#{recipe}/recipe.rb"
end

#override default roles
#ad specs roles.
roles = Dir.glob("specs/*/roles.rb")
roles.each do |role|
    load "#{role}"
end


if File.exist?("roles.rb")
  load "roles.rb"
end

