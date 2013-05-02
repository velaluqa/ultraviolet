require "spec_helper"

describe Uv do
  it "parses blank" do
    Uv.parse('', 'xhtml', 'css').should == %(<pre class="mac_classic"></pre>)
  end

  it "debugs" do
    STDERR.stub!(:puts) # silence
    Uv.debug('', 'css').is_a?(Textpow::DebugProcessor).should == true
  end
end
