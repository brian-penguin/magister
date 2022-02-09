require "rails_helper"

RSpec.describe "Pages" do
  it "renders the home page route by default" do
    get "/"

    expect(response.status).to eq 200
    expect(response.body).to include("Magister")
  end

  it "renders the page when the page exists" do
    get "/pages/home"

    expect(response.status).to eq 200
    expect(response.body).to include("Magister")
  end

  it "renders the 404 page when the page exists" do
    get "/pages/i-really-should-not-exist-please-and-thank-you-yikes"

    expect(response.status).to eq 404
    expect(response.body).to include("YIKES BRO")
  end
end
