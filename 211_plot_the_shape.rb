## Plot the Shape (#211)
#
# Kvetha Rubyists,
# 
# This week's quiz was submitted by Alan at http://rubyquiz.strd6.com/suggestions
# 
# Somewhere on a 10x20 grid is a 10 block shape. The shape parts are all
# adjacent, either horizontally, vertically or diagonally.
# 
# Write a simple algorithm that will list the co-ordinates of the 10
# parts of the shape. Try to minimize lookups to the grid.
# 
# Here is an example shape to get started (you may need to copy into a
# monospaced font):

grid = <<-EOD
 0123456789ABCDEFGHIJ
0....................
1....................
2.........@@.........
3........@...........
4........@@@@@.......
5.............@......
6............@.......
7....................
8....................
9....................
EOD

h='';
grid.split("\n").each_with_index{|r,i|
  (i == 0 ? h = r.split(//) :
  r.gsub(/(\.+)(@+)/){
    d=$1.size.to_i;$2.split('').size.times{|a|
      p [h[d+a+1],r[0..0]]}})} 
