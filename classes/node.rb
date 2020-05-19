class Node
  include Comparable
  attr_reader :pos, :adjacent_nodes
  
  def initialize(pos)
    @pos = pos
    @adjacent_nodes = []
  end

  def add_edge(adjacent_node)
    @adjacent_nodes << adjacent_node
  end

  def <=>(other)
    @pos <=> other
  end
end