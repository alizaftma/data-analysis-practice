-- Mastery of SELECT, FROM, WHERE, LIMIT, and LIKE
-- Phase 4: Logic & Constraints (Combined Clauses)

-- 1. Modern Classics: Select all 'Movie' entries that were released after the year 2010.

query = """
        SELECT *
        FROM Netflix
        WHERE type = "Movie" AND release_year > 2010;
        """
result = pd.read_sql(query, conn)
result

-- 2. Rating Filter: Find all titles that are not 'TV Show' and have a rating containing the letter 'G' (e.g., G, PG-13).

query = """
        SELECT title
        FROM Netflix
        WHERE type NOT LIKE "TV SHOW" AND rating LIKE "%R%";
        """
result = pd.read_sql(query, conn)
result

-- 3. Decade Review: Retrieve the first 10 titles released in the 2010s (Hint: Use release_year LIKE '201%').

query = """
        SELECT title
        FROM Netflix
        WHERE release_year LIKE "201%"
        LIMIT 10;
        """
result = pd.read_sql(query, conn)
result
