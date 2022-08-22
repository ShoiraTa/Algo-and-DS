require 'spec_helper'
require_relative '../5kyu_exercises'

RSpec.describe "7 kyu codewars" do
  describe 'Test' do
   it 'sum_pairs' do
    expect(sum_pairs([1, 4, 8, 7, 3, 15], 8)).to eq([1, 7])
    expect(sum_pairs([20, -13, 40], -7)).to eq(nil)
   end
   it "test" do
    expect(moveZeros([1,2,0,1,0,1,0,3,0,1])).to eq( [ 1, 2, 1, 1, 3, 1, 0, 0, 0, 0 ])
  end
   it "test" do
    expect(pig_it('Pig latin is cool')).to eq( 'igPay atinlay siay oolcay')
    expect(pig_it('O tempora o mores !')).to eq( 'Oay emporatay oay oresmay !')
  end
   
  end
end
