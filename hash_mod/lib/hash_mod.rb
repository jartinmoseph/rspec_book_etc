class HashMod < Hash
  def initialize options = {}
    @options = options
  end
  def to_symbol_hash
    @keeys = @options.keys
    @symbol_hash = Hash.new
    @keeys.each do | keything |
      keeything = keything.to_sym
      @symbol_hash[keeything] = @options[keything]
    end
    @symbol_hash
  end
end
