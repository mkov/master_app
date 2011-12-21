require 'spec_helper'

describe "products/edit.html.erb" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :pagetitle => "MyString",
      :description => "MyString",
      :content => "MyText",
      :price_from => 1,
      :price_to => 1
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_pagetitle", :name => "product[pagetitle]"
      assert_select "input#product_description", :name => "product[description]"
      assert_select "textarea#product_content", :name => "product[content]"
      assert_select "input#product_price_from", :name => "product[price_from]"
      assert_select "input#product_price_to", :name => "product[price_to]"
    end
  end
end
