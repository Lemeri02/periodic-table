class Element
  attr_reader :symbol, :name, :number, :density, :year, :discovered_by

  def initialize(element)
    @symbol = element[0]
    @name = element[1]['name']
    @number = element[1]['number']
    @density = element[1]['density']
    @year = element[1]['year']
    @discovered_by = element[1]['discovered_by']
  end

  def list
    "#{@symbol} (#{name})"
  end

  def to_s
    <<~ELEMENT

      Symbol: #{@symbol}
      Name: #{@name}
      Atomic number: #{@number}
      Discovery: #{@discovered_by} (#{@year})
      Density: #{@density} g/cm³
    ELEMENT
  end
end
