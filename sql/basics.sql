-- Mastery of SELECT, FROM, WHERE, LIMIT, and LIKE
-- Phase 1: Data Discovery (SELECT & FROM) 

-- 1. The "Full Audit": How do you display every single row and column from the Streaming_Data table?<br>
  
  query = """
        SELECT *
        FROM Netflix;
        """
result = pd.read_sql(query, conn)
result

-- 2. The "Quick List": Write a query to show only the title, type, and genre for every entry in the table.<br>

query = """
        SELECT title, type, genre
        FROM Netflix;
        """
result = pd.read_sql(query, conn)
result

-- 3. The "Quick Preview": Show only the first 5 rows from the table to see how the content is formatted.

  query = """
        SELECT *
        FROM Netflix
        LIMIT 5;
        """
result = pd.read_sql(query, conn)
result.index = result.index + 1
result

