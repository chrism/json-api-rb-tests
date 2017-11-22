require 'jsonapi_swagger_helpers'

class DocsController < ActionController::API
  include JsonapiSwaggerHelpers::DocsControllerMixin

  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'JSONAPI RB TESTS'
      key :description, 'Testing the jsonapi-rb project'
      contact do
        key :name, 'Chris Masters'
        key :email, 'chrismasters@gmail.com'
      end
    end
    key :basePath, '/api'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end
  jsonapi_resource '/v1/schedules'
end
