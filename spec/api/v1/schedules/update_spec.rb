require 'rails_helper'

RSpec.describe "schedules#update", type: :request do
  context 'basic update' do
    let!(:schedule) { create(:schedule) }

    let(:payload) do
      {
        data: {
          id: schedule.id.to_s,
          type: 'schedules',
          attributes: {
            name: "Test changed"
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    it 'updates the resource' do
      expect {
        jsonapi_put "/api/v1/schedules/#{schedule.id}", payload
      }.to change { schedule.reload.attributes }
      assert_payload(:schedule, schedule, json_item)

      # ... assert updates attributes ...
    end
  end
end
