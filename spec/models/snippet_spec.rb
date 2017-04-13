require 'rails_helper'

RSpec.describe Snippet, type: :model do
  it 'should allow valid information' do
    snippet = Snippet.new(title: 'html doctype', code: '<!doctype html>')
    expect(snippet).to be_valid
  end

  it 'should not allow invalid information' do
    snippet = Snippet.new
    expect(snippet).to_not be_valid
    # you must include a title for an entry

    snippet = Snippet.new(description: 'Blah')
    expect(snippet).to_not be_valid
    # as it was expecting to include the title

    snippet = Snippet.new(title: '')
    expect(snippet).to_not be_valid
    # the title can't be blank

  end

end
