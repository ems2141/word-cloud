require 'spec_helper'
require_relative '../lib/word_cloud'
require 'json'

describe WordCloud do
  it 'returns the name of the first person' do
    json_data = <<-INDENTED_HEREDOC
    {
      "Person One": [
      "Word 1 WORD 2 wOrD3"
      ]
    }
    INDENTED_HEREDOC

    parsed_data = JSON.parse(json_data)
    word_cloud = WordCloud.new(parsed_data)
    expect(word_cloud.first_person).to eq("Person One")
  end
end