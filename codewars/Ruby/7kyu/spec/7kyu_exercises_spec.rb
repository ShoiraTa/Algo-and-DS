require 'spec_helper'
require_relative '../7kyu_exercises'

RSpec.describe "7 kyu codewars" do
  describe 'How many consecutive numbers are needed?' do
    it 'if  0' do
      expect(consecutive([4,8,6])).to eq(2) 
      expect(consecutive([4,5,6])).to eq(0) 
    end
  end
  describe 'Smallest value of an array' do
    it 'if  index' do
      expect(find_smallest([5,4,3,2,1],"index")).to eq(4)
      expect(find_smallest([5,4,3,2,1], "value")).to eq(1) 
    end
  end
  describe 'Bumps in the Road' do
    it 'if dead' do
      expect(bump("_nnnnnnn_n__n______nn__nn_nnn")).to eq("Car Dead")
      expect(bump("__nn_nnnn__n_n___n____nn__nnn")).to eq("Woohoo!") 
    end
  end
  describe 'Hells Kitchen' do
    it 'if dead' do
      expect(gordon('how dare you feck')).to eq('H*W!!!! D@R*!!!! Y**!!!! F*CK!!!!')
      expect(gordon('are you stu pid')).to eq('@R*!!!! Y**!!!! ST*!!!! P*D!!!!') 
    end
  end
  describe 'Move 10' do
    it 'If it goes past z, start again at a' do
      expect(move_ten("exampletesthere")).to eq('ohkwzvodocdrobo') 
      expect(move_ten("testcase")).to eq('docdmkco') 
    end
  end
  describe 'Numbers to Letters' do
    it 'returns true' do
      expect(switcher(['25','7','8','4','14','23','8','25','23','29','16','16','4'])).to eq('btswmdsbd kkw') 
      expect(switcher(['12','28','25','21','25','7','11','22','15'])).to eq('o?bfbtpel')
      expect(switcher(['24', '12', '23', '22', '4', '26', '9', '8'])).to eq('codewars') 
    end
  end
  describe 'Switcheroo' do
    it 'returns true' do
      expect(switcheroo("abc")).to eq("bac")
      expect(switcheroo('aaabcccbaaa')).to eq('bbbacccabbb') 
      expect(switcheroo('ccccc')).to eq('ccccc')
      expect(switcheroo('abababababababab')).to eq('babababababababa')
      expect(switcheroo('aaaaa')).to eq('bbbbb')
    end
  end
  describe("longest") do
    it("Basic tests") do
        expect(longest("aretheyhere", "yestheyarehere")).to eq( "aehrsty")
        expect(longest("loopingisfunbutdangerous", "lessdangerousthancoding")).to eq( "abcdefghilnoprstu")
        expect(longest("inmanylanguages", "theresapairoffunctions")).to eq( "acefghilmnoprstuy")
    end 
  end
  describe "Solution" do
    it "Fixed tests" do
      expect(sum_two_smallest_numbers([5, 8, 12, 18, 22])).to eq 13 
      expect(sum_two_smallest_numbers([7, 15, 12, 18, 22])).to eq 19
      expect(sum_two_smallest_numbers([25, 42, 71, 12, 18, 22])).to eq 30
    end
  end
  describe "Solution" do
    it "Fixed tests" do
      expect(descending_order(0)).to eq 0
      expect(descending_order(1) ).to eq 1
      expect(descending_order(123456789) ).to eq 987654321
    end
  end

  describe("Basic tests") do
    it "Fixed tests" do
    expect(get_middle("testing")).to eq "t"
    expect(get_middle("A")).to eq  "A"
    expect(get_middle("test")).to eq "es"
    expect(get_middle("middle")).to eq  "dd"
    expect(get_middle("of")).to eq "of"
    end
  end
end

RSpec.describe "7 kyu codewars" do
  it 'testing predicate' do 
    res = 1+2
    expect(res.even?).to eq false
  end
end
