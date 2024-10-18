require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'index' do
    subject { response }

    let(:send_request) { get :show, params: { id: user.id } }
    let!(:user) { create(:user) }
    let!(:order) { create(:order, user: user) }
    let!(:product_first) { create(:product, order: order) }
    let!(:product_second) { create(:product, order: order) }

    before { send_request }

    it do
      expect(JSON.parse(subject.body).deep_symbolize_keys).to be_present
    end
  end
end
