# frozen_string_literal: true

require 'spec_helper'
require_relative '../7kyu_exercises'

RSpec.describe '7 kyu codewars' do
  describe 'How many consecutive numbers are needed?' do
    it 'if  0' do
      expect(consecutive([4, 8, 6])).to eq(2)
      expect(consecutive([4, 5, 6])).to eq(0)
    end
  end
  describe 'Smallest value of an array' do
    it 'if  index' do
      expect(find_smallest([5, 4, 3, 2, 1], 'index')).to eq(4)
      expect(find_smallest([5, 4, 3, 2, 1], 'value')).to eq(1)
    end
  end
  describe 'Bumps in the Road' do
    it 'if dead' do
      expect(bump('_nnnnnnn_n__n______nn__nn_nnn')).to eq('Car Dead')
      expect(bump('__nn_nnnn__n_n___n____nn__nnn')).to eq('Woohoo!')
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
      expect(move_ten('exampletesthere')).to eq('ohkwzvodocdrobo')
      expect(move_ten('testcase')).to eq('docdmkco')
    end
  end
  describe 'Numbers to Letters' do
    it 'returns true' do
      expect(switcher(%w[25 7 8 4 14 23 8 25 23 29 16 16 4])).to eq('btswmdsbd kkw')
      expect(switcher(%w[12 28 25 21 25 7 11 22 15])).to eq('o?bfbtpel')
      expect(switcher(%w[24 12 23 22 4 26 9 8])).to eq('codewars')
    end
  end
  describe 'Switcheroo' do
    it 'returns true' do
      expect(switcheroo('abc')).to eq('bac')
      expect(switcheroo('aaabcccbaaa')).to eq('bbbacccabbb')
      expect(switcheroo('ccccc')).to eq('ccccc')
      expect(switcheroo('abababababababab')).to eq('babababababababa')
      expect(switcheroo('aaaaa')).to eq('bbbbb')
    end
  end
  describe('longest') do
    it('Basic tests') do
      expect(longest('aretheyhere', 'yestheyarehere')).to eq('aehrsty')
      expect(longest('loopingisfunbutdangerous', 'lessdangerousthancoding')).to eq('abcdefghilnoprstu')
      expect(longest('inmanylanguages', 'theresapairoffunctions')).to eq('acefghilmnoprstuy')
    end
  end
  describe 'Solution' do
    it 'Fixed tests' do
      expect(sum_two_smallest_numbers([5, 8, 12, 18, 22])).to eq 13
      expect(sum_two_smallest_numbers([7, 15, 12, 18, 22])).to eq 19
      expect(sum_two_smallest_numbers([25, 42, 71, 12, 18, 22])).to eq 30
    end
  end
  describe 'Solution' do
    it 'Fixed tests' do
      expect(descending_order(0)).to eq 0
      expect(descending_order(1)).to eq 1
      expect(descending_order(123_456_789)).to eq 987_654_321
    end
  end

  describe('Basic tests') do
    it 'Fixed tests' do
      expect(get_middle('testing')).to eq 't'
      expect(get_middle('A')).to eq 'A'
      expect(get_middle('test')).to eq 'es'
      expect(get_middle('middle')).to eq  'dd'
      expect(get_middle('of')).to eq 'of'
    end
  end
  describe 'Solution' do
    it 'Fixed tests' do
      expect(square_digits(3212)).to eq 9414
      expect(square_digits(2112)).to eq  4114
      expect(square_digits(1111)).to eq 1111
      expect(square_digits(1_234_321)).to eq 14_916_941
      expect(square_digits(0)).to eq 0
    end
  end
  describe 'Solution' do
    it 'Fixed tests' do
      expect(is_isogram('Dermatoglyphics')).to eq true
      expect(is_isogram('isogram')).to eq true
      expect(is_isogram('aba')).to eq false
    end
  end
  describe 'Solution' do
    it 'Fixed tests' do
      expect(XO('xo0')).to eq true
      expect(XO('xxxoo')).to eq false
      expect(XO('xxOo')).to eq true
    end
  end
  describe('nb_year') do
    it('Basic tests') do
      expect(nb_year(1500, 5, 100, 5000)).to eq 15
      expect(nb_year(1_500_000, 2.5, 10_000, 2_000_000)).to eq 10
      expect(nb_year(1_500_000, 0.25, 1000, 2_000_000)).to eq 94
    end
  end
  describe('nb_year') do
    it('Basic tests') do
      expect(collatz(20)).to eq 8
      expect(collatz(15)).to eq 18
    end
  end
  describe('find missing num') do
    it('Basic tests') do
      expect(findNum([3, 7, 1, 2, 8, 4, 5])).to eq 6
      expect(findNum([4, 2, 3, 1, 6, 7, 9])).to eq 5
    end
  end
  describe 'Solution' do
    it 'Fixed tests' do
      expect(odd_or_even([0])).to eq 'even'
      expect(odd_or_even([1])).to eq 'odd'
      expect(odd_or_even([])).to eq 'even'
      expect(odd_or_even([-1023, 1, -2])).to eq 'even'
      expect(odd_or_even([-1023, -1, 3])).to eq 'odd'
    end
  end

  describe 'Basic Tests' do
    it 'Fixed tests' do
      expect(product_array([12, 20])).to eq([20, 12])
      expect(product_array([12, 20])).to eq [20, 12]
      expect(product_array([3, 27, 4, 2])).to eq [216, 24, 162, 324]
      expect(product_array([13, 10, 5, 2, 9])).to eq [900, 1170, 2340, 5850, 1300]
      expect(product_array([16, 17, 4, 3, 5, 2])).to eq [2040, 1920, 8160, 10_880, 6528, 16_320]
    end
  end

  describe 'Basic tests' do
    it 'Fixed tests' do
      expect(max_product([4, 3, 5], 2)).to eq 20
      expect(max_product([10, 8, 7, 9], 3)).to eq 720
      expect(max_product([8, 6, 4, 6], 3)).to eq 288
      expect(max_product([14, 29, -28, 39, -16, -48], 4)).to eq(-253_344)
      expect(max_product([1], 1)).to eq 1
    end
  end
end

RSpec.describe '7 kyu codewars' do
  it 'testing predicate' do
    res = 1 + 2
    expect(res.even?).to eq false
  end
end
