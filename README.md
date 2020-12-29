# nytPuzzleMania2020
Hacky solutions to some of the puzzles in the 2020 New York Times Puzzle Mania! special section. (NYT eds: I promise I have only cheated on the sections listed here. I'm doing the giant crossword the old-fashioned way!)

## 3D Word Hunt
I love the New York Times' annual Puzzle Mania special section, published around the winter holidays. Last year, I manually solved the 3D Word Hunt puzzle, but felt decidedly...archaic...solving what was basically a graph search problem by hand. This year, I've leveraged modern computing + learned a little about graph mathematics in the process.

My solution implements what I think (?) is depth-limited graph search. The actual search is broken out as a separate function, and should be generalized. However, some important assumptions:
- Assumes an undirected graph (or, more accurately, doesn't care about your directed graph)
- Instead of seeking a goal, this algorithm traverses the graph to a specified depth. "Depth" is 1-indexed
- Does not care whether it visits the same nodes multiple times. For example, for a depth of 5, the following path is permissible: Node 1 --> Node 2 --> Node 1 --> Node 2 --> Node 1.

Thanks to the the DWYL project for their English words dictionary (https://github.com/dwyl/english-words); and of course, the NYT puzzle team.
