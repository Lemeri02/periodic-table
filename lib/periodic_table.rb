class PeriodicTable
  attr_reader :elements

  def self.from_file(file)
    elements = JSON.parse File.read(file, encoding: 'UTF-8')
    new(elements)
  end

  def initialize(elements)
    @elements = elements
  end

  def get_element(input)
    selected_element = @elements.select { |key, _| key.downcase == input.downcase }

    selected_element unless selected_element.empty?
  end
end
