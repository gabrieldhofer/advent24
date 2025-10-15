
\echo "Day 1 - Advent of Code 2024 !!"

copy report3 from '/home/gabrieldhofer/Desktop/advent24/input.txt';

-- tmp1
SELECT 
  unnest(string_to_array(col1, ' ')) as col1
into temporary tmp1
from report3;

-- tmp2
SELECT 
  string_to_array(col1, ' ') as arr,
  array_length(string_to_array(col1, ' '), 1) as arr_len
INTO temporary tmp2
FROM (SELECT * FROM report3 LIMIT 20) t;

-- tmp3
select * 
into temp tmp3
from tmp2 limit 10;

-- show tmp3
SELECT unnest(arr) as unnested
from tmp3
limit 20;


--DECLARE mycursor CURSOR FOR SELECT * FROM report3;

--   finally found something on this syntax: 
--   https://www.geeksforgeeks.org/postgresql/postgresql-block-structure/
DO $$
DECLARE 
  r RECORD;
  x RECORD;
BEGIN
  FOR r in select * from tmp3 loop

    raise notice ' % ', r.arr;

    --create new temp table
    CREATE TEMP TABLE tmp4 as 
    SELECT * FROM unnest(r.arr);

    RAISE NOTICE E'\n';
    for x in select * from tmp4 loop
      RAISE NOTICE '%', x;
    end loop;

    DROP TABLE tmp4;

  END LOOP;
END $$;

-- TODO: learn postgres SQL datatypes
--FETCH NEXT 1 FROM mycursor;

