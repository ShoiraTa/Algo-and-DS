# frozen_string_literal: true

# require 'spec_helper'
require_relative '../6kyu_exercises'

RSpec.describe '7 kyu codewars' do
  describe 'Test' do
    it 'test' do
      expect(split('abcdefg')).to eq(%w[ab cd ef g_])
      expect(split('abcdef')).to eq(%w[ab cd ef])
    end

    it 'test' do
      expect(multiples(10)).to eq(23)
      expect(multiples(20)).to eq(78)
      expect(multiples(200)).to eq(9168)
    end
    it 'find_it' do
      expect(find_it([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5])).to eq(5)
      expect(find_it([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5])).to eq(-1)
      expect(find_it([1, 1, 1, 1, 1, 1, 10, 1, 1, 1, 1])).to eq(10)
    end
    it 'should pass fixed tests' do
      expect(digital_root(16)).to eq 7
      expect(digital_root(942)).to eq 6
      expect(digital_root(132_189)).to eq 6
      expect(digital_root(493_193)).to eq 2
    end
    it 'should pass fixed tests' do
      expect(count_bits(0)).to eq  0
      expect(count_bits(4)).to eq  1
      expect(count_bits(7)).to eq  3
      expect(count_bits(9)).to eq  2
      expect(count_bits(10)).to eq 2
    end
    it 'should pass fixed tests' do
      expect(duplicate_count('')).to eq 0
      expect(duplicate_count('abcde')).to eq 0
      expect(duplicate_count('abcdeaa')).to eq 1
      expect(duplicate_count('abcdeaB')).to eq 2
      expect(duplicate_count('Indivisibilities')).to eq 2
    end
    it 'should pass fixed tests' do
      expect(order('is2 Thi1s T4est 3a')).to eq 'Thi1s is2 3a T4est'
      expect(order('4of Fo1r pe6ople g3ood th5e the2')).to eq 'Fo1r the2 g3ood 4of th5e pe6ople'
      expect(order('')).to eq ''
    end
    it 'should pass fixed tests' do
      expect(to_camel_case('')).to eq ''
      expect(to_camel_case('the_stealth_warrior')).to eq 'theStealthWarrior'
      expect(to_camel_case('The-Stealth-Warrior')).to eq 'TheStealthWarrior'
      expect(to_camel_case('A-B-C')).to eq 'ABC'
    end
    it 'Basic Tests' do
      expect(getLengthOfMissingArray([[1, 2], [4, 5, 1, 1], [1], [5, 6, 7, 8, 9]])).to eq 3
      expect(getLengthOfMissingArray([[false, false], [false, false, false]])).to eq 1
      expect(getLengthOfMissingArray([%w[a a a], %w[a a], %w[a a a a], ['a'],
                                      %w[a a a a a a]])).to eq 5
    end
    it 'Basic Tests' do
      expect(est_subsets([1, 2, 3, 4])).to eq 15
      expect(est_subsets([-13, 9, -5, 7, -4, -2, 8])).to eq 127
    end
    it 'should pass fixed tests' do
      expect(duplicate_encode('din')).to eq '((('
      expect(duplicate_encode('recede')).to eq '()()()'
      expect(duplicate_encode('Success')).to eq ')())())'
      expect(duplicate_encode('Prespecialized')).to eq ')()())()(()()('
    end
    it 'should pass fixed tests' do
      expect(is_valid_walk(%w[n s n s n s n s n s])).to eq true
      expect(is_valid_walk(%w[w e w e w e w e w e w e])).to eq false
      expect(is_valid_walk(%w[n n n s n s n s n s])).to eq false
    end
    it 'Basic tests' do
      expect(persistence(39)).to eq 3
      expect(persistence(4)).to eq 0
      expect(persistence(25)).to eq 2
      expect(persistence(999)).to eq 4
      expect(persistence(444)).to eq 3
    end
    it 'should pass fixed tests' do
      expect(alphabet_position("The sunset sets at twelve o' clock.")).to eq '20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11'
      expect(alphabet_position("-.-'")).to eq ''
    end
    it 'should pass fixed tests' do
      expect(find_missing_letter(%w[a b c d f])).to eq 'e'
      expect(find_missing_letter(%w[O Q R S])).to eq 'P'
      expect(find_missing_letter(%w[b d])).to eq 'c'
      expect(find_missing_letter(%w[a b d])).to eq 'c'
      expect(find_missing_letter(%w[b d e])).to eq 'c'
    end

    it 'test' do
      expect(tops('')).to eq ''
      expect(tops('1')).to eq ''
      expect(tops('12')).to eq '2'
      expect(tops('abcdefghijklmnopqrstuvwxyz12345')).to eq '3pgb'
      expect(tops('abcdefghijklmnopqrstuvwxyz1236789ABCDEFGHIJKLMN')).to eq 'M3pgb'
    end
    it 'Check if string is a Pangram' do
      #  expect(pangram?("abcdefghijklmopqrstuvwxyz")).to eq(false)
      #  expect(pangram?("The quick brown fox jumps over the lazy dog.")).to eq(true)
      #  expect(pangram?("This is not a pangram.")).to eq(false)
      expect(pangram?('ABCD45EFGH,IJK,LMNOPQR56STUVW3XYZ')).to eq(true)
      #  expect(pangram?("EDIXudDsIUbGqIO QZrSL yCiBkduASJMZrxVbR vAWg KYKPbfTZlLnpSQXyfFbKZOaTcaDjucOqxAUYWRxwUqEcFZruCtn ")).to eq(false)
    end

    it 'Some examples' do
      expect(deep_count([])).to eq(0)
      expect(deep_count([1, 2, 3])).to eq(3)
      expect(deep_count(['x', 'y', ['z']])).to eq(4)
      expect(deep_count([1, 2, [3, 4, [5]]])).to eq(7)
      expect(deep_count([[[[[[[[[]]]]]]]]])).to eq(8)
    end

    it 'Simple Fractions' do
      expect(reduce([60, 20])).to eq([3, 1])
      expect(reduce([80, 120])).to eq([2, 3])
      expect(reduce([4, 2])).to eq([2, 1])
      expect(reduce([45, 120])).to eq([3, 8])
      expect(reduce([1000, 1])).to eq([1000, 1])
      expect(reduce([1, 1])).to eq([1, 1])
    end

    it 'Simple reverser' do
      expect(reverser(1234)).to eq(4321)
      # expect(reverser(4321)).to eq( 1234)
    end
    it 'Simple reverser' do
      expect(beggars([1, 2, 3, 4, 5], 1)).to eq([15])
      expect(beggars([1, 2, 3, 4, 5], 2)).to eq([9, 6])
      expect(beggars([1, 2, 3, 4, 5], 3)).to eq([5, 7, 3])
      expect(beggars([1, 2, 3, 4, 5], 6)).to eq([1, 2, 3, 4, 5, 0])
      expect(beggars([1, 2, 3, 4, 5], 0)).to eq([])
    end
  end
end

# beggars([1,2,3,4,5],3)
# 1+4 [2,3,5]
# 2 [2,3,5]
