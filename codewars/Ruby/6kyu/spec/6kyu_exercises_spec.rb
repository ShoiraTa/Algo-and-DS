require 'spec_helper'
require_relative '../6kyu_exercises'

RSpec.describe "7 kyu codewars" do
  describe 'Test' do
    it 'test' do
      expect(split("abcdefg")).to eq( ["ab", "cd", "ef", "g_"])
      expect(split("abcdef")).to eq( ["ab", "cd", "ef"]) 
    end

    it 'test' do
      expect(multiples(10)).to eq( 23)
      expect(multiples(20)).to eq(78) 
      expect(multiples(200)).to eq(9168) 
    end
    it 'find_it' do
      expect(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])).to eq( 5)
      expect(find_it([1,1,2,-2,5,2,4,4,-1,-2,5])).to eq(-1) 
      expect(find_it([1,1,1,1,1,1,10,1,1,1,1])).to eq(10) 
    end
    it "should pass fixed tests" do
      expect(digital_root(16)).to eq 7
      expect(digital_root(942)).to eq  6
      expect(digital_root(132189)).to eq  6
      expect(digital_root(493193)).to eq 2
    end
    it "should pass fixed tests" do
      expect( count_bits(0)).to eq  0
      expect( count_bits(4)).to eq  1
      expect( count_bits(7)).to eq  3
      expect( count_bits(9)).to eq  2
      expect( count_bits(10)).to eq  2
    end
    it "should pass fixed tests" do
      expect( create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq "(123) 456-7890"
      expect( create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])).to eq "(111) 111-1111"
      expect( create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq "(123) 456-7890"\
    end
  end

end

RSpec.describe "7 kyu codewars" do
  it 'testing predicate' do 
    res = 1+2
    expect(res.even?).to eq false
  end
end
