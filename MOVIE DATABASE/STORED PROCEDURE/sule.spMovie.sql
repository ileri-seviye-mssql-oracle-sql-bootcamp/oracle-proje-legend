
------------------------------------STORED PROCEDURE FOR MOVIE

CREATE OR REPLACE PROCEDURE print_info(
    p_FILM_ID NUMBER 
)
IS
  r_info MOVIE%ROWTYPE;
BEGIN
  -- get contact based on customer id
  SELECT *
  INTO r_info
  FROM MOVIE
  WHERE FILM_ID = p_FILM_ID;

  -- print out contact's information
  dbms_output.put_line( r_info.NAME || ' ' ||
  r_info.IMDB_ID || '<' || r_info.ORIGINAL_LANGUAGE ||'>' );

EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;

