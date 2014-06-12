require 'spec_helper'
require_relative '../lib/word_cloud'
require 'json'

describe WordCloud do
  it 'returns the name of the first person' do
    json_data = <<-INDENTED_HEREDOC
    {
      "Person One": [
      "Word1 WORD2 wOrD3"
      ]
    }
    INDENTED_HEREDOC

    parsed_data = JSON.parse(json_data)
    word_cloud = WordCloud.new(parsed_data)
    expect(word_cloud.first_person).to eq("Person One")
  end

  it 'can count each word' do
    json_data = <<-INDENTED_HEREDOC
    {
      "Person One": [
      "Word1 WORD2",
      "WORD1"
      ]
    }
    INDENTED_HEREDOC

    parsed_data = JSON.parse(json_data)
    word_cloud = WordCloud.new(parsed_data)
    expect(word_cloud.word_count).to eq({"word1" => { :count => 2},
                                        "word2" => { :count => 1}
                                        })
  end
end