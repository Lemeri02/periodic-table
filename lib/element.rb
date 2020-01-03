class Element
  def initialize(params)
    @symbol = params.keys.join
    @name = params[@symbol]['name']
    @number = params[@symbol]['number']
    @density = params[@symbol]['density']
    @year = params[@symbol]['year']
    @discovered_by = params[@symbol]['discovered_by']
  end

  def to_s
    <<-ELEMENT
      Symbol: #{@symbol}
      Name: #{@name}
      Atomic number: #{@number}
      Discovery: #{@discovered_by} (#{@year})
      Density: #{@density} g/cm³
    ELEMENT
  end
end
