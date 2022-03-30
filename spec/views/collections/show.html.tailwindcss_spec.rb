require 'rails_helper'

RSpec.describe "collections/show", type: :view do
  before(:each) do
    @collection = assign(:collection, Collection.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
