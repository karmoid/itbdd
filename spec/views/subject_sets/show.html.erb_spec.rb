require 'spec_helper'

describe "subject_sets/show" do
  before(:each) do
    @subject_set = assign(:subject_set, stub_model(SubjectSet,
      :name => "Name",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
