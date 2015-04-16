require 'rails_helper'

RSpec.describe "memos/show", type: :view do
  before(:each) do
    @memo = assign(:memo, Memo.create!(
      :md => "Md"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Md/)
  end
end
