require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :note => "MyText",
      :occurrence_id => 1
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activities_path, "post" do
      assert_select "textarea#activity_note[name=?]", "activity[note]"
      assert_select "input#activity_occurrence_id[name=?]", "activity[occurrence_id]"
    end
  end
end
