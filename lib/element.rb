class Element
  def initialize(element)
    @symbol = element.keys.join
    @name = element[@symbol]['name']
    @number = element[@symbol]['number']
    @density = element[@symbol]['density']
    @year = element[@symbol]['year']
    @discovered_by = element[@symbol]['discovered_by']
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
