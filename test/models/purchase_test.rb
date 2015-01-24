# coding utf-8

require 'test_helper'

describe Purchase do
    let(:purchase) { purchases(:one) }

    it 'is valid with valid params' do
      purchase.must_be :valid? # Must create with valid params
    end

    it 'should have the buyer João Silva' do
      purchase.buyer.eql? 'João Silva'
    end
end
