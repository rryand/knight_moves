require_relative "classes/graph"

puts "\e[1mKnight moves:\e[0m"

def knight_moves(initial, final)
  graph = Graph.new
  graph.build_graph
  puts "#{initial} -> #{final}:"
  puts " -#{graph.trace_route(initial, final)}"
end

knight_moves([0,0],[1,2])
knight_moves([0,0],[3,3])
knight_moves([3,3],[0,0])
knight_moves([0,0],[1,1])