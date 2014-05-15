require 'spec_helper'

describe SmsSender do
  let(:sms_sender) { SmsSender.new('c94595c30ba1e84be01cad2d8fc1b302', 'd65933a24bc56fdda8358ca2bc90a978', "localhost", "3000", "/send") }
    
  describe '#send' do
    subject { sms_sender.send('myob', 'this is a test', "0451111111")}
    it 'should send' do
      expect(subject).to eql 201
    end
  end
end