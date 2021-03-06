require 'spec_helper'
describe TheBigUsernameBlacklist do
  describe '.valid?' do
    subject { TheBigUsernameBlacklist.valid?(username) }
    context 'matched username' do
      let(:username) { 'administrator' }
      it { should be false }
    end

    context 'unmatched username' do
      let(:username) { 'jamess' }
      it { should be true }
    end
  end
end
