require 'spec_helper'

describe "companies/new.html.erb" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :pagetitle => "MyString",
      :description => "MyString",
      :content => "MyText",
      :contacts => "MyText",
      :site => "MyString",
      :email => "MyString",
      :priority => 1
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path, :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_pagetitle", :name => "company[pagetitle]"
      assert_select "input#company_description", :name => "company[description]"
      assert_select "textarea#company_content", :name => "company[content]"
      assert_select "textarea#company_contacts", :name => "company[contacts]"
      assert_select "input#company_site", :name => "company[site]"
      assert_select "input#company_email", :name => "company[email]"
      assert_select "input#company_priority", :name => "company[priority]"
    end
  end
end
