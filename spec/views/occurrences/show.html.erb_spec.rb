require 'spec_helper'

describe "occurrences/show" do
  before(:each) do
    @occurrence = assign(:occurrence, stub_model(Occurrence,
      :title => "Title",
      :note => "MyText",
      :active => false,
      :subject_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
