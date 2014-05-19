require 'spec_helper'

describe "occurrences/edit" do
  before(:each) do
    @occurrence = assign(:occurrence, stub_model(Occurrence,
      :title => "MyString",
      :note => "MyText",
      :active => false,
      :subject_id => 1
    ))
  end

  it "renders the edit occurrence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", occurrence_path(@occurrence), "post" do
      assert_select "input#occurrence_title[name=?]", "occurrence[title]"
      assert_select "textarea#occurrence_note[name=?]", "occurrence[note]"
      assert_select "input#occurrence_active[name=?]", "occurrence[active]"
      assert_select "input#occurrence_subject_id[name=?]", "occurrence[subject_id]"
    end
  end
end
