require 'yaml'

module GitGem
  def download_all
   gems_to_git = YAML::load_file("git_gems.yml")
  
   gems_to_git.to_yaml

   gems_to_git.each do |a|
     cmd = "git clone #{a[:url]}"
     puts "=> #{cmd}"
     system(cmd)
   end 
  end
end

