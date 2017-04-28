namespace :book do
  desc 'prepare build'
  task :prebuild do
    Dir.mkdir 'images' unless Dir.exists? 'images'
    Dir.glob("book/*/images/*").each do |image|
      FileUtils.copy(image, "images/" + File.basename(image))
    end
  end

  desc 'build basic book formats'
  task :build => :prebuild do
    puts "Converting to HTML..."
    `bundle exec asciidoctor agiledroid.adoc`
    puts " -- HTML output at agiledroid.html"

    puts "Converting to EPub..."
    `bundle exec asciidoctor-epub3 agiledroid.adoc`
    puts " -- Epub output at agiledroid.epub"

    puts "Converting to Mobi (kf8)..."
    `bundle exec asciidoctor-epub3 -a ebook-format=kf8 agiledroid.adoc`
    puts " -- Mobi output at agiledroid.mobi"

    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf agiledroid.adoc 2>/dev/null`
    puts " -- PDF  output at agieldroid.pdf"
  end
end

task :default => "book:build"
