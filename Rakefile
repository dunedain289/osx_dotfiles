home = ENV["HOME"]
pwd = Dir.pwd

all_files = FileList[".*"].select { |f| File.file? f }
master_files = all_files.map { |f| File.join(home, f) }
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
    sh "ln -sf #{File.join pwd, f} #{mf}"
  end
  task :diff => "diff_#{f}"
  task :link => "link_#{f}"
end
