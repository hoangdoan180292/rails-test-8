require 'rails_helper'

describe ShoesController, :type => :controller do
  describe "#index" do
    def do_request
      get :index
    end

    let!(:shoes) { create_list(:shoe, 3) }

    it "assigns :shoes" do
      do_request

      expect(assigns(:shoes).size).to eq 3
    end
  end
end