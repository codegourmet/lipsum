require 'lipsum'

describe Lipsum, "module methods" do
  it "should respond to a paragraphs method" do
    Lipsum.paragraphs(1).should == Lipsum::LOREM_IPSUM.split(/\n\n/).first
  end

  it "should respond to a sentences method" do
    Lipsum.sentences(1).should == Lipsum::LOREM_IPSUM.split(/\. /).first
  end

  it "should respond to a words method" do
    Lipsum.words(5).should == Lipsum::LOREM_IPSUM.split(/\s+/)[0,5].join(' ')
  end
end

class ViewSurrogate
  include Lipsum::Methods
end

describe Lipsum, "including the Methods module (view methods)" do

  before(:all) do
    @view = ViewSurrogate.new
  end

  it "should give back a paragraph when called with no args" do
      @view.lipsum.should == Lipsum.paragraphs(1)
  end

  it "should give back words when called with a number arg" do
      @view.lipsum(10).should == Lipsum.words(10)
  end

  it "should give back paragraphs when called with a :paragraphs option" do
      @view.lipsum(:paragraphs => 10).should == Lipsum.paragraphs(10)
  end

  it "should give back sentences when called with a :sentences option" do
      @view.lipsum(:sentences => 10).should == Lipsum.sentences(10)
  end

  it "should give back words when called with a :words option" do
      @view.lipsum(:words => 10).should == Lipsum.words(10)
  end
end
