require 'rubygems'

begin
   require 'hoe'
   require File.expand_path("../lib/uv/version", __FILE__)

   Hoe.plugin :gemcutter

   h = Hoe.spec 'ultraviolet' do
      developer("Chris Hoffman", "cehoffman@gmail.com")
      developer("Spox", "spox@modspox.com")
      developer("Dizan Vasquez", "dichodaemon@gmail.com")

      self.version = Uv::Version
      self.extra_deps << ['textpow', '>= 0.11.0']
      self.readme_file = "README.rdoc"
      spec_extras[:required_ruby_version] = ">= 1.9.0"
   end
   
   task :gemspec do
     open(h.spec.name + ".gemspec", "w") { |f| f.write h.spec.to_ruby }
   end

rescue LoadError => e
   desc 'Run the test suite.'
   task :test do
      system "ruby -Ibin:lib:test test/test_#{rubyforge_name}.rb"
   end
end
