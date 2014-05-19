require 'spec_helper'

describe "occurrences/index" do
  before(:each) do
    assign(:occurrences, [
      stub_model(Occurrence,
        :title => "Title",
        :note => "MyText",
        :active => false,
        :subject_id => 1
      ),
      stub_model(Occurrence,
        :title => "Title",
        :note => "MyText",
        :active => false,
        :subject_id => 1
      )
    ])
  end

  it "renders a list of occurrences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
