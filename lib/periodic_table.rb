class PeriodicTable
  attr_reader :elements

  def self.from_file(file)
    elements_hash = JSON.parse File.read(file, encoding: 'UTF-8')

    new(elements_hash.map { |element| Element.new(element) })
  end

  def initialize(elements)
    @elements = elements
  end

  def get_element(input)
    @elements.select { |element| element.symbol.downcase == input.downcase }
  end
end
