require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'index' do
    subject { response }

    let!(:user) { create(:user) }
    let!(:order) { create(:order), user: user }
    let!(:product_first) { create(:product, order: order) }
    let!(:product_second) { create(:product, order: order) }

    before { send_request }

    it { expect subject.to be_present }
  end
end
