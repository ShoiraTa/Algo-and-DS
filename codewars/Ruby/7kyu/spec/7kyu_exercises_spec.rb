require 'spec_helper'
require_relative '../7kyu_exercises'

RSpec.describe "7 kyu codewars" do
  describe 'How many consecutive numbers are needed?' do
    it 'if more than 0' do
      expect(consecutive([4,8,6])).to eq(2) 
    end
    it 'if  0' do
      expect(consecutive([4,5,6])).to eq(0) 
    end
  end
  describe 'Smallest value of an array' do
    it 'if value' do
      expect(find_smallest([5,4,3,2,1], "value")).to eq(1) 
    end
    it 'if  index' do
      expect(find_smallest([5,4,3,2,1],"index")).to eq(4)
    end
  end
end
