require 'rails_helper'

RSpec.describe "mobile_apps/index", type: :view do
  before(:each) do
    assign(:mobile_apps, [
      MobileApp.create!(
        :name => "Name",
        :store_ids => "Store Ids"
      ),
      MobileApp.create!(
        :name => "Name",
        :store_ids => "Store Ids"
      )
    ])
  end

  it "renders a list of mobile_apps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Store Ids".to_s, :count => 2
  end
end
