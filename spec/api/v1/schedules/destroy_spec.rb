require 'rails_helper'

RSpec.describe "schedules#destroy", type: :request do
  context 'basic destroy' do
    let!(:schedule) { FactoryBot.create(:schedule) }

    it 'updates the resource' do
      expect {
        delete "/api/v1/schedules/#{schedule.id}"
      }.to change { Schedule.count }.by(-1)

      expect(response.status).to eq(204)
    end
  end
end
