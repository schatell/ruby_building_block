require "cypher.rb"

describe "Cypher" do

  it "replace caracter with cyphered caracter" do
    expect(cypher("cypher", 5)) == "hdumjw"
  end

  it "keep track of upcase and downcase" do
    expect(cypher("CyPhEr", 5)) == "HdUmJw"
  end

  it "Can reverse the shift value" do
    expect(cypher("cypher", -1)) == "bxogdq"
  end

  it "make the loop from z to a" do
    expect(cypher("xyz", 1)) == "yza"
  end

  it "Ignore non-alphabetic caracter" do
    expect(cypher("abc123", 1)) == "bcd"
  end

end
