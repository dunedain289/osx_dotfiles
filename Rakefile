require 'fileutils'

home = ENV["HOME"]
pwd = Dir.pwd

all_files = FileList["*"].select { |f| File.file? f }
all_files.delete "Rakefile"
all_files_with_dots = all_files.map { |f| ".#{f}" }
master_files = all_files_with_dots.map { |f| File.join(home, f) }
files = all_files.zip(master_files)

desc "Diff files in #{home} against git copies"
task :diff

desc "Force links into place in #{home}"
task :link

files.each do |f,mf|
  task "diff_#{f}" do
    sh "diff -u #{mf} #{f}"
  end
  task "link_#{f}" do
    FileUtils.ln_s File.join(pwd,f), mf, :verbose => (ENV["VERBOSE"] || ENV["TEST"]), :noop => ENV["TEST"], :force => ENV["FORCE"]
  end
  task :diff => "diff_#{f}"
  task :link => "link_#{f}"
end
