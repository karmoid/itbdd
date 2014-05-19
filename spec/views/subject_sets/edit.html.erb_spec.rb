require 'spec_helper'

describe "subject_sets/edit" do
  before(:each) do
    @subject_set = assign(:subject_set, stub_model(SubjectSet,
      :name => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit subject_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subject_set_path(@subject_set), "post" do
      assert_select "input#subject_set_name[name=?]", "subject_set[name]"
      assert_select "textarea#subject_set_note[name=?]", "subject_set[note]"
    end
  end
end
