class WordCloud
  def initialize(data)
    @data = data
  end

  def first_person
    @data.keys.first
  end
end