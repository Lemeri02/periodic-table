class PeriodicTable
  def self.from_file(file)
    @elements = JSON.parse File.read(file, encoding: 'UTF-8')
    @elements.each_value do |value|
    end
    new(@elements)
  end

  def initialize(elements)
    @elements_key = elements.keys
    @elements = elements
  
    # elements.each do |symbol, element|
    #   @symbol = symbol
    #   @name = element['name']
    #   @number = element['number']
    #   @density = element['density']
    #   @year = element['year']
    #   @discovered_by = element['discovered_by']
    # end
  end

  def show(input)
    select_element = @elements.select { |k, v| k.downcase == input.downcase }
    element = Element.new(select_element)
    return 'Элемент еще не добавлен в таблицу' if select_element.empty?

    element
  end

  def show_variants
    @elements.each
  end

  # def to_s
  #   @elements
  # end
end
