require 'rails_helper'

RSpec.describe "schedules#index", type: :request do
  context 'basic fetch' do
    let!(:schedule1) { create(:schedule) }
    let!(:schedule2) { create(:schedule) }

    it 'serializes the list correctly' do
      get "/api/v1/schedules"

      expect(json_ids(true)).to match_array([schedule1.id, schedule2.id])
      assert_payload(:schedule, schedule1, json_items[0])
      assert_payload(:schedule, schedule2, json_items[1])
    end
  end
end
