# frozen_string_literal: true

require 'spec_helper'
require_relative '../4kyu_exercises'

RSpec.describe '7 kyu codewars' do
  describe 'Test' do
    it 'sum_pairs' do
      expect(format_duration(1)).to eq '1 second'
      expect(format_duration(62)).to eq '1 minute and 2 seconds'
      expect(format_duration(120)).to eq '2 minutes'
      expect(format_duration(3600)).to eq '1 hour'
      expect(format_duration(31_636_000)).to eq '1 year, 1 day, 3 hours, 46 minutes and 40 seconds'
    end
    it 'sum_pairs' do
      # expect(next_bigger(12)).to eq 21
      expect(next_bigger(513)).to eq 531
      expect(next_bigger(2017)).to eq 2071
      expect(next_bigger(414)).to eq 441
      expect(next_bigger(144)).to eq 414
    end
  end
end
