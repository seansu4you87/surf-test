require 'spec_helper'

describe ListingsController do
  describe "GET /listings/:name" do
    it "returns the JSON for the listing" do
      get "/listings/hawaii-bungalo"

      expect(JSON.parse(response.body)).to eql({
        name: "Hawaii Bungalo",
        price: 145
      }.with_indifferent_access)
    end
  end

  describe "POST /listings" do
    it "returns the JSON for the posted listing" do
      post "/listings", {
        name: "My Listing",
        price: 1000
      }

      expect(JSON.parse(response.body)).to eql({
        name: "My Listing",
        price: 1000
      }.with_indifferent_access)
    end
  end

end
