require 'spec_helper'

describe "subject_sets/new" do
  before(:each) do
    assign(:subject_set, stub_model(SubjectSet,
      :name => "MyString",
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new subject_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subject_sets_path, "post" do
      assert_select "input#subject_set_name[name=?]", "subject_set[name]"
      assert_select "textarea#subject_set_note[name=?]", "subject_set[note]"
    end
  end
end
