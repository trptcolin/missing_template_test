require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        name: "Name",
        original: Rack::Test::UploadedFile.new(File.join("spec", "images", "halp-cat.jpg"))
      ),
      Image.create!(
        name: "Name",
        original: Rack::Test::UploadedFile.new(File.join("spec", "images", "halp-cat.jpg"))
      ),
    ])
  end

  it "renders a list of images" do
    sleep 1
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end

  it "renders a list of images again" do
    sleep 1
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
