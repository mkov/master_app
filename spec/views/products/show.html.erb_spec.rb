require 'spec_helper'

describe "products/show.html.erb" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :pagetitle => "Pagetitle",
      :description => "Description",
      :content => "MyText",
      :price_from => 1,
      :price_to => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pagetitle/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
