require 'rails_helper'

RSpec.describe "mobile_apps/show", type: :view do
  before(:each) do
    @mobile_app = assign(:mobile_app, MobileApp.create!(
      :name => "Name",
      :store_ids => "Store Ids"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Store Ids/)
  end
end
