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
  describe 'Bumps in the Road' do
    it 'if reaches ' do
      expect(bump("__nn_nnnn__n_n___n____nn__nnn")).to eq("Woohoo!") 
    end
    it 'if dead' do
      expect(bump("_nnnnnnn_n__n______nn__nn_nnn")).to eq("Car Dead")
    end
  end
end
