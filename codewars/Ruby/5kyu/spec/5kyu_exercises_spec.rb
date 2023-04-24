# frozen_string_literal: true

require 'spec_helper'
require_relative '../5kyu_exercises'

RSpec.describe '7 kyu codewars' do
  describe 'Test' do
    it 'sum_pairs' do
      expect(sum_pairs([1, 4, 8, 7, 3, 15], 8)).to eq([1, 7])
      expect(sum_pairs([20, -13, 40], -7)).to eq(nil)
    end
    it 'test' do
      expect(moveZeros([1, 2, 0, 1, 0, 1, 0, 3, 0, 1])).to eq([1, 2, 1, 1, 3, 1, 0, 0, 0, 0])
    end
    it 'test' do
      expect(pig_it('Pig latin is cool')).to eq('igPay atinlay siay oolcay')
      expect(pig_it('O tempora o mores !')).to eq('Oay emporatay oay oresmay !')
    end
    it 'test' do
      expect(anagrams('abba', %w[aabb abcd bbaa dada])).to eq(%w[aabb bbaa])
      expect(anagrams('laser', %w[lazing lazy lacer])).to eq([])
    end

    it('should handle simple tests') do
      expect(first_non_repeating_letter('a')).to eq 'a'
      expect(first_non_repeating_letter('sTress')).to eq 'T'
      expect(first_non_repeating_letter('moonmen')).to eq 'e'
    end
    it('should handle simple tests') do
      expect(max_sequence([])).to eq 0
      expect(max_sequence([-32])).to eq 0
      expect(max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to eq 6
      expect(max_sequence([11])).to eq 11
      expect(max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])).to eq 12
    end
    # it('should handle simple tests') do
    #   expect(zero_plentiful([0, 0, 0, 0, 0, 1])).to eq(1)
    #   expect(zero_plentiful([0, 0, 0, 0, 1, 0, 0, 0, 0])).to eq(2)
    #   expect(zero_plentiful([0, 0, 0, 0, 1, 0])).to eq(0)
    #   expect(zero_plentiful([0, 0, 0, 1, 0, 0])).to eq(0)
    #   expect(zero_plentiful([1, 2, 3, 4, 5])).to eq(0)
    #   expect(zero_plentiful([])).to eq(0)
    # end
    it('should handle simple tests') do
      # expect(rgb(0, 0, 0)).to eq '000000'
      # expect(rgb(0, 0, -20)).to eq '000000'
      expect(rgb(300, 255, 255)).to eq 'FFFFFF'
      expect(rgb(173, 255, 47)).to eq 'ADFF2F'
    end

    it('should handle simple tests') do
      expect(generateHashtag('')).to eq false
      expect(generateHashtag(' ' * 200)).to eq false
      expect(generateHashtag('Do We have A Hashtag')).to eq '#DoWeHaveAHashtag'
      expect(generateHashtag('Codewars')).to eq '#Codewars'
      expect(generateHashtag('Codewars Is Nice')).to eq '#CodewarsIsNice'
      expect(generateHashtag('Codewars is nice')).to eq '#CodewarsIsNice'
      expect(generateHashtag("code#{' ' * 140}wars")).to eq '#CodeWars'
      expect(generateHashtag('a' * 139)).to eq "#A#{'a' * 138}"
      expect(generateHashtag('a' * 140)).to eq false
      expect(generateHashtag('#')).to eq false
      expect(generateHashtag('     #     ')).to eq false
      expect(generateHashtag('##')).to eq false
    end
  end
end
