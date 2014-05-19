require 'spec_helper'

describe "activities/edit" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :note => "MyText",
      :occurrence_id => 1
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do
      assert_select "textarea#activity_note[name=?]", "activity[note]"
      assert_select "input#activity_occurrence_id[name=?]", "activity[occurrence_id]"
    end
  end
end
