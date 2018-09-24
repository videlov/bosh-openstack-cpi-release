require 'spec_helper'

[Bosh::OpenStackCloud::NoopRegistry, Bosh::Cpi::RegistryClient].each do |test_class|
  describe test_class do
    subject { described_class.new(endpoint, user, password) }
    let(:endpoint) { 'fake_endpoint' }
    let(:user) { 'fake_user' }
    let(:password) { 'fake_password' }

    describe 'interface' do
      it 'implements update_settings' do
        expect(subject).to respond_to(:update_settings).with(2).arguments
      end

      it 'implements read_settings' do
        expect(subject).to respond_to(:read_settings).with(1).arguments
      end

      it 'implements delete_settings' do
        expect(subject).to respond_to(:delete_settings).with(1).arguments
      end
    end
  end
end
