require 'spec_helper'
require_relative '../lib/word_cloud'

describe WordCloud do
  it " does stuff" do
    data = {
        "Ila Huels" => [
        "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
        "brand sexy channels"]
    }

    output =  { "optimize" => { :count => 1, :people => ["Ila Huels"] },
        "web-enabled" => { :count => 1, :people => ["Ila Huels"] },
        "supply-chains" => { :count => 1, :people => ["Ila Huels"] },
        "brand" => { :count => 1, :people => ["Ila Huels"] },
        "sexy" => { :count => 1, :people => ["Ila Huels"] },
        "channels" => { :count => 1, :people => ["Ila Huels"] },
    }

    expect(WordCloud.new(data).sift).to eq(output)
  end

end