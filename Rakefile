require 'bundler/gem_tasks'
require 'bundler'
require 'multi_json'
require 'open-uri'

def log text
  puts " \e[32m=>\e[0m #{text}"
end

def execute banner, command
  log "#{banner}..."
  output = `#{command} 2>&1`
  unless $?.success?
    $stderr.puts " \e[31mOops, something went wrong!\e[0m\n\n"
    $stderr.puts output
    exit 1
  end
  output
end

desc "Downloads wisp into './vendor' and checks the latest released tag"
task :update do
  raw = open('http://registry.npmjs.org/wisp') { |io| io.binmode.read }
  metadata = MultiJson.load raw
  current_version = File.read 'VERSION'
  version = ENV['VERSION'] || metadata['dist-tags']['latest']
  tarball = metadata['versions'][version]['dist']['tarball']

  log "Updating stylus source from #{current_version} to #{version}"

  execute "Cleaning up old files", "rm -rf vendor"
  execute "Download stylus #{version}", "wget #{tarball} -O stylus.tgz"
  execute "Upacking stylus #{version}", "tar -zxvf stylus.tgz"
  execute "Cleaning up", "rm -rf stylus.tgz package/.npmignore"
  execute "Updating stylus dependencies", "mv package vendor && cd vendor && npm install ."
  log "Updating VERSION file"
  File.open('VERSION', 'w') { |file| file.write version }
  log "Done!"
end
