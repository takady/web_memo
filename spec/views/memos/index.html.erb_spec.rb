require 'rails_helper'

RSpec.describe "memos/index", type: :view do
  before(:each) do
    assign(:memos, [
      Memo.create!(
        :md => "Md"
      ),
      Memo.create!(
        :md => "Md"
      )
    ])
  end

  it "renders a list of memos" do
    render
    assert_select "tr>td", :text => "Md".to_s, :count => 2
  end
end
