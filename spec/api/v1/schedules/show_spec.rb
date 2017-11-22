require 'rails_helper'

RSpec.describe "schedules#show", type: :request do
  context 'basic fetch' do
    let!(:schedule) { create(:schedule) }

    it 'serializes the resource correctly' do
      get "/api/v1/schedules/#{schedule.id}"

      assert_payload(:schedule, schedule, json_item)
    end
  end
end
