class Element
  attr_reader :symbol, :name, :number, :density, :year, :discovered_by

  def initialize(element)
    @symbol = element[0]
    @props = element[1]
    @name = @props['name']
    @number = @props['number']
    @density = @props['density']
    @year = @props['year']
    @discovered_by = @props['discovered_by']
  end

  def list
    "#{@symbol} (#{@name})"
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
