require File.dirname(__FILE__) + '/../spec_helper'

describe Newsletter do
  it "should be valid" do
    Newsletter.new.should be_valid
  end
end
