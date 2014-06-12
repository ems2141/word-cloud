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
            results[word] = {:count => 1, :people => [key]}
          else
            counter = results[word][:count] + 1
            people_array = results[word][:people]
            if !people_array.include?(key)
              x << key
            end

            #find current state/value of :people array
            #if person isn't in array shovel the current key into the array
            results[word][:count] = counter
            results[word][:people] = people_array
          end
        end
      end
    end
    results
  end
end