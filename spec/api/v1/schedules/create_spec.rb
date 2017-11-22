require 'rails_helper'

RSpec.describe "schedules#create", type: :request do
  context 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'schedules',
          attributes: {
            name: 'Test'
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        jsonapi_post "/api/v1/schedules", payload
      }.to change { Schedule.count }.by(1)
      schedule = Schedule.last

      assert_payload(:schedule, schedule, json_item)
    end
  end
end
