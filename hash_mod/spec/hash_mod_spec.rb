require 'rspec'
require './lib/hash_mod.rb'

describe HashMod do
  context "hash is keyed on strings" do
    before :each do
      @the_hash = HashMod.new 'first' => "one", 'second' => "two"
    end

    subject{@the_hash}
    it {should respond_to :to_symbol_hash}
    it "converts string keys to symbols" do
      @the_hash.to_symbol_hash[:first] == "one"
    end
  end

  context "hash is keyed on symbols" do
    before :each do
      @hash_keyed_on_symbols = HashMod.new :first => "one", :second => "two"
    end

    subject{@hash_keyed_on_symbols}
    it "leaves well alone" do
      @hash_keyed_on_symbols.to_symbol_hash[:first].should == "one" 
      @hash_keyed_on_symbols.to_symbol_hash[:second].should == "two" 

    end
  end
end
