# Knight Moves

## Goal
Find the shortest route a knight would take on a chess board.

## Implementation
Reading up on some possible data structures, I figured that an undirected graph would be best suited for this problem. Each square on a chess board would be represented by a Node and each connection, an Edge.

To avoid looping infinitely due to cycles in the graph, I implemented a breadth-first traversal for the search algorithm. In order to record the route, I used a hash that binds the position of the child node to its parent's position and backtraced the positions once the algorithm found the end node.