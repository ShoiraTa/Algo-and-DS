require 'spec_helper'
require_relative '../4kyu_exercises'

RSpec.describe "7 kyu codewars" do
  describe 'Test' do
   it 'sum_pairs' do
    expect(format_duration(1)).to eq "1 second"
    expect(format_duration(62)).to eq "1 minute and 2 seconds"
    expect(format_duration(120)).to eq "2 minutes"
    expect(format_duration(3600)).to eq "1 hour"
    expect(format_duration(31636000)).to eq "1 year, 1 day, 3 hours, 46 minutes and 40 seconds"
   end
  end
end
