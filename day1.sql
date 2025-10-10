/*
select 
  record, 
  string_to_array(record, ' ') as record_array, 
  array_length(string_to_array(record, ' '), 1) as record_array_len 
from 
  report2;
*/


-- DO $$
-- BEGIN
--   FOR counter IN 1..10 LOOP
--     RAISE NOTICE '---';
--   END LOOP;
-- END;
-- $$ LANGUAGE plpgsql;

-- DO $$
-- DECLARE
   --total_row_cnt INTEGER;
-- BEGIN
  
--total_row_cnt := (select count(*) from report2);
--RAISE NOTICE '----';
--END;
--$$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE proc1 (

) 
LANGUAGE plpgsql
AS $$
  DECLARE 
    -- declaration
  BEGIN
    -- query
  END;
$$

-- DO $$
-- DECLARE r RECORD;
-- BEGIN
--   FOR r in select * from report3 LOOP
--     RAISE NOTICE 'this is a print message';
--   END LOOP;
-- END; 
-- $$ LANGUAGE plpgsql;

