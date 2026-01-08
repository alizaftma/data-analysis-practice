-- Mastery of SELECT, FROM, WHERE, LIMIT, and LIKE
-- Phase 5: The "Final Boss" Challenge

-- 1. The Binge-Watch Report: Show the title and duration_min of the first 3 'TV Show' entries that are longer than 30 minutes.

query = """
        SELECT title, duration_min
        FROM Netflix
        WHERE type LIKE "TV SHOW" AND duration_min > 30;
        """
result = pd.read_sql(query, conn)
result

-- 2. The Specific Search: Find every title that starts with 'S', ends with 's', and belongs to the 'Sci-Fi' genre.

query = """
        SELECT title
        FROM Netflix
        WHERE title LIKE "S%s" AND genre = "Sci-Fi";
        """
result = pd.read_sql(query, conn)
result
