-- Mastery of SELECT, FROM, WHERE, LIMIT, and LIKE
-- Phase 2: Basic Filtering (WHERE)

-- 1. The Movie Filter: Find all details for titles that are categorized specifically as a 'Movie'.

query = """
        SELECT *
        FROM Netflix
        WHERE type = "Movie";
        """
result = pd.read_sql(query, conn)
result

-- 2. Short Content: List all titles where the duration_min is less than 60 minutes.

query = """
        SELECT title
        FROM Netflix
        WHERE duration_min > 60;
        """
result = pd.read_sql(query, conn)
result

-- 3. Genre Search: Show all titles that belong specifically to the 'Sci-Fi' genre.

query = """
        SELECT title
        FROM Netflix
        WHERE genre = "Sci-Fi";
        """
result = pd.read_sql(query, conn)
result
