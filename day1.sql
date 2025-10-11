
\echo "whoa!!"

copy report3 from '/home/gabrieldhofer/Desktop/advent24/input.txt';

--select * from report3;

select unnest(string_to_array(col1, ' ')) as val1 
into temporary tmp
from report3;


select * from tmp limit 10;

