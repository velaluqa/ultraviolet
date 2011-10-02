require File.expand_path('spec/spec_helper')

describe Uv do
  # all 2 legacy tests ...
  it "parses blank" do
    Uv.parse('', 'xhtml', 'css').should == %(<pre class="mac_classic"></pre>)
  end

  it "debugs" do
    STDERR.stub!(:puts) # silence
    Uv.debug('', 'css').is_a?(Textpow::DebugProcessor).should == true
  end
end
