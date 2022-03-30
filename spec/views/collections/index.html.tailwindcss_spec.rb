require 'rails_helper'

RSpec.describe "collections/index", type: :view do
  before(:each) do
    assign(:collections, [
      Collection.create!(),
      Collection.create!()
    ])
  end

  it "renders a list of collections" do
    render
  end
end
