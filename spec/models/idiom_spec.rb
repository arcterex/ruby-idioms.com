require 'spec_helper'
# input
# output / error
# state change
describe Idiom do
  valid_attributes = { :user_id => 1, :idiom => "idiom" }
  describe '#idiom' do
    subject { Idiom.new(:idiom => "idiom").idiom }
    it { should be_kind_of(String) }
    it { should == "idiom" }
  end
  
  describe '#user_id' do
    subject { Idiom.new(:user_id => 1).user_id }
    it { should be_kind_of(Integer) }
    it { should == 1 }
  end
  
  describe "creation" do
    it "should not create a new instance without an idiom" do
      local_attributes = valid_attributes
      local_attributes[:idiom] = nil
      idiom = Idiom.new local_attributes
      idiom.should_not be_valid
    end
    
    it "should create a new instance with valid attributes" do
      idiom = Idiom.new valid_attributes
      idiom.should be_valid
    end
    
    it "should create a new instance of the Idiom class" do
      idiom = Idiom.new valid_attributes
      idiom.should be_kind_of(Idiom)
    end
  end
  # describe '#name' do
  #   subject { Idiom.new(:user_id => 1).name }
  #   
  #   it { should be_kind_of(String) }
  # 
  #   it { should == 'Dan' }
  # end
  # 
  # it "should create a new instance given valid attributes" do
  #   Idiom.create!(@valid_attributes)
  # end
end
