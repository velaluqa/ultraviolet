require 'rubygems'

begin
   require 'hoe'
   require File.expand_path("../lib/uv/version", __FILE__)

   Hoe.spec 'ultraviolet' do
      developer("Chris Hoffman", "cehoffman@gmail.com")
      developer("Spox", "spox@modspox.com")
      developer("Dizan Vasquez", "dichodaemon@gmail.com")

      self.url = Uv::Version
      p.url = 'http://ultraviolet.rubyforge.org'
      self.extra_deps << ['textpow', '>= 0.10.0']
      spec_extras[:required_ruby_version] = ">= 1.9.0"
   end

rescue LoadError => e
   desc 'Run the test suite.'
   task :test do
      system "ruby -Ibin:lib:test test/test_#{rubyforge_name}.rb"
   end
end
