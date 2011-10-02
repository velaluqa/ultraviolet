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

  describe "syntax" do
    Dir['syntax/*.syntax'].each do |syntax|
      it "#{syntax} can parse" do
        node = Textpow::SyntaxNode.load(syntax)
        node.parse("xxx\n1 + 1\n### xxx")
      end
    end
  end
end
