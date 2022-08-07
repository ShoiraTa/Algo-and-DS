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
end
