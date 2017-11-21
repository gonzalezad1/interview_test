require 'rails_helper'

RSpec.describe "mobile_apps/edit", type: :view do
  before(:each) do
    @mobile_app = assign(:mobile_app, MobileApp.create!(
      :name => "MyString",
      :store_ids => "MyString"
    ))
  end

  it "renders the edit mobile_app form" do
    render

    assert_select "form[action=?][method=?]", mobile_app_path(@mobile_app), "post" do

      assert_select "input[name=?]", "mobile_app[name]"

      assert_select "input[name=?]", "mobile_app[store_ids]"
    end
  end
end
