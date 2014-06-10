class WordCloud
  def initialize(data)
    @data = data
  end

  def sift
    h_keys = @data.keys
    results = {}
    counter = 0
    h_keys.each do |key|
      @data[key].each do |line|
        words = line.split(" ")
        words.each do |word|
          if !results.include?(word)
            results[word.downcase] = {:count => counter + 1, :people => [key]}
            counter = 0
          else
            results[word] = {
                :count => counter += 1,
                :people => [] << key
            }
            #increment counter total by 1
            #add person's name to the people hash

          end
        end
      end
    end
    results
  end
end