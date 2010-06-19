require 'spec_helper'
# input
# output / error
# state change
describe Idiom do
  
  let(:attributes) { { :user_id => 1, :idiom => 'idiom' } }
  
  describe '#idiom' do
    subject { Idiom.new(attributes).idiom }
    it { should be_kind_of(String) }
    it { should == "idiom" }
  end
  
  describe '#user_id' do
    subject { Idiom.new(attributes).user_id }
    it { should be_kind_of(Integer) }
    it { should == 1 }
  end
  
  # annointed by Dan
  describe ".new" do
    subject { Idiom.new attributes }
    
    context 'with valid attributes' do
      it { should be_valid }
      it { should be_kind_of(Idiom) }
    end

    context 'with invalid attributes' do
      let(:attributes) { { :user_id => 1, :idiom => nil } }
      it { should_not be_valid }
      it { should be_kind_of(Idiom) }
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
  #   Idiom.create!(attributes)
  # end
end
