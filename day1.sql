
\echo "Day 1 - Advent of Code 2024 !!"

copy report3 from '/home/gabrieldhofer/Desktop/advent24/input.txt';

--select * from report3;

select 
  unnest(string_to_array(col1, ' ')) as col1
into temporary tmp
from report3;

select 
  string_to_array(col1, ' '),
  array_length(string_to_array(col1, ' '), 1) as col1_length
into temporary tmp2
from report3;

select * 
from tmp2
limit 10;




