require_relative "node"

class Graph
  def initialize
    @nodes = {}
  end

  public

  def build_graph
    puts "building graph..."
    build_nodes
    build_edges
    #@nodes[[0, 0]].adjacent_nodes.each { |n| p n.pos }
  end

  private

  def build_nodes
    (0..7).each do |x|
      (0..7).each do |y|
        @nodes[[x, y]] = Node.new([x, y])
      end
    end
  end

  def build_edges
    @nodes.each_key do |x, y|
      p [x, y]
      [[x + 1, y + 2], [x + 2, y + 1],
       [x + 2, y - 1], [x + 1, y - 2],
       [x - 1, y - 2], [x - 2, y - 1],
       [x - 2, y + 1], [x - 1, y + 2]].each do |x2, y2|
        puts "  -#{[x2, y2]}" if edge_is_valid?([x, y], [x2, y2])
        add_edge([x, y], [x2, y2]) if edge_is_valid?([x, y], [x2, y2])
       end
    end
  end

  def add_edge(node1, node2)
    @nodes[node1].add_edge(@nodes[node2])
    @nodes[node2].add_edge(@nodes[node1])
  end

  def edge_is_valid?(pos1, pos2)
    x2, y2 = pos2
    x2.between?(0, 7) && y2.between?(0, 7) && 
    !@nodes[pos1].adjacent_nodes.include?(pos2)
  end
end