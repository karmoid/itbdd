require 'spec_helper'

describe "subject_sets/index" do
  before(:each) do
    assign(:subject_sets, [
      stub_model(SubjectSet,
        :name => "Name",
        :note => "MyText"
      ),
      stub_model(SubjectSet,
        :name => "Name",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of subject_sets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
