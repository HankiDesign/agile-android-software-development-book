# Find all *.md in ../en directory
Dir.chdir("../en/")
markdown_files = Dir.glob("*.md")

# Match with references .md in Makefile
markdown_files.each do |file|
  if File.readlines("../Makefile").grep(/#{file}/).size == 0
    # Report non-matching files
    p 'Orphan file found: ' << file
  end
end
