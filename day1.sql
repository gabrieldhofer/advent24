
\echo "Day 1 - Advent of Code 2024 !!"

copy report3 from '/home/gabrieldhofer/Desktop/advent24/input.txt';

SELECT 
  unnest(string_to_array(col1, ' ')) as col1
into temporary tmp1
from report3;

SELECT 
  string_to_array(col1, ' ') as arr,
  array_length(string_to_array(col1, ' '), 1) as arr_len
into temporary tmp2
FROM (SELECT * FROM report3 LIMIT 20) t;

select * from tmp2 limit 10;
--DECLARE mycursor CURSOR FOR SELECT * FROM report3;

-- finally found something on this syntax: 
--   https://www.geeksforgeeks.org/postgresql/postgresql-block-structure/
DO $$
DECLARE 
  r RECORD;
BEGIN
  FOR r in select * from tmp2 loop

    raise notice ' % ', r.arr;

    CREATE TEMP TABLE tmp3 as 
    SELECT * FROM unnest(r.arr);

    DROP TABLE tmp3;

  END LOOP;
END $$;

-- TODO: learn postgres SQL datatypes
--FETCH NEXT 1 FROM mycursor;




