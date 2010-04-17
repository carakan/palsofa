require File.dirname(__FILE__) + '/../spec_helper'

describe Tienda do
  it "should be valid" do
    Tienda.new.should be_valid
  end
end
