class WordCloud
  def initialize(data)
    @data = data
  end

  def sift
    h_keys = @data.keys
    results = {}
    h_keys.each do |key|
      @data[key].each do |line|
        words = line.split(" ")
        words.each do |word|
          results[word.downcase] = {:count => 1, :people => [key]}
        end
      end
    end
    results
  end
end