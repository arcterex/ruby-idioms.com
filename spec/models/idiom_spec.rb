require 'spec_helper'
# input
# output / error
# state change
describe Idiom do
  describe '#idiom' do
    subject { Idiom.new(:idiom => "idiom").idiom }
    it { should be_kind_of(String) }
    it { should == "idiom" }
  end
  
  describe '#user_id' do
    subject { Idiom.new(:user_id => 1)}
    it { should be_kind_of(Integer) }
    it { should == 1 }
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
