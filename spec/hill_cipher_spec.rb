# frozen_string_literal: true

RSpec.describe HillCipher do
  let(:message) { 'act' }
  let(:key) { 'gybnqkurp' }
  let(:encrypted_message) { 'poh' }
  
  describe '#encode' do
    it 'crypte a message' do
      expect(subject.encode(message, key)).to eql(encrypted_message)
    end
  end
end
