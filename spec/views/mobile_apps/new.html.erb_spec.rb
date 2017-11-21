require 'rails_helper'

RSpec.describe "mobile_apps/new", type: :view do
  before(:each) do
    assign(:mobile_app, MobileApp.new(
      :name => "MyString",
      :store_ids => "MyString"
    ))
  end

  it "renders new mobile_app form" do
    render

    assert_select "form[action=?][method=?]", mobile_apps_path, "post" do

      assert_select "input[name=?]", "mobile_app[name]"

      assert_select "input[name=?]", "mobile_app[store_ids]"
    end
  end
end
