class WordCloud
  def initialize(data)
    @data = data
  end

  def first_person
    @data.keys.first
  end

  def word_count
    results = {}
    data_keys = @data.keys
    data_keys.each do |key|
      lines = @data[key]
      lines.each do |line|
        words = line.downcase.split(" ")
        words.each do |word|
          if results[word] == nil
            results[word] = {:count => 1}
          else
            counter = results[word][:count] + 1
            results[word] = {:count => counter}
          end
        end
      end
    end
    results
  end
end