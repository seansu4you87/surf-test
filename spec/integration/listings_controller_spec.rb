require 'spec_helper'

describe ListingsController do
  describe "GET /listings/:name" do
    it "returns the JSON for the listing" do
      get "/listings/hawaii-bungalo"

      expect(response.body).to eql({
        name: "Hawaii Bungalo",
        price: 145
      })
    end
  end

  describe "POST /listings" do
    it "returns the JSON for the posted listing" do
      post "/listings", {
        name: "My Listing",
        price: 1000
      }

      expect(response.body).to eql({
        name: "My Listing",
        price: 1000
      })
    end
  end

end
