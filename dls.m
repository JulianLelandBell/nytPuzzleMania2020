function nodeList = dls(graph,start,depth)
%DLS.M Depth-limited graph search algorithm

%{
dls.m
Julian Bell, Dec. 2020

This function implements something that *may* be depth-limited graph
search. It's written to solve the 3D Word Hunt problem in the New York
Times 2020 Puzzle Mania section, but should be general. Important
assumptions:
- Assumes undirected graph.
- Instead of seeking a goal, this algorithm traverses the graph to a
specified depth. 
- Does not care whether it visits the same nodes multiple times. For
example, for a depth of 5, the following path is permissible: Node 1 -->
Node 2 --> Node 1 --> Node 2 --> Node 1.

%}
nodeList = [];
curNode = start;
nextNodes = neighbors(graph, curNode);
if depth == 0
    % We are at the bottom of the tree. Return current node number
    nodeList = start;
    return
else
    for n = 1:length(nextNodes)
        lowerList = dls(graph,nextNodes(n),depth-1);
        nodeList = [nodeList;ones(height(lowerList),1).*curNode, lowerList];
    end
    return
end
