require 'rails_helper'

RSpec.describe "Memos", type: :request do
  let(:http_env) { http_authorization }

  describe "GET /memos" do
    it "works! (now write some real specs)" do
      get memos_path, {}, http_env
      expect(response).to have_http_status(200)
    end
  end
end
