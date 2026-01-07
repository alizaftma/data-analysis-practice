-- Mastery of SELECT, FROM, WHERE, LIMIT, and LIKE
-- Phase 3: Pattern Matching (LIKE)

-- 1. The "The" Initiative: Find all titles that start with the word 'The'.

query = """
        SELECT title
        FROM Netflix
        WHERE title LIKE "The%";
        """
result = pd.read_sql(query, conn)
result

-- 2. Genre Suffix: List all titles where the genre ends with the letters 'Fi'.

query = """
        SELECT title
        FROM Netflix
        WHERE genre LIKE "%Fi";
        """
result = pd.read_sql(query, conn)
result

-- 3 Keyword Finder: Retrieve all shows that have the word 'Black' anywhere in the title.

query = """
        SELECT *
        FROM Netflix
        WHERE title LIKE "%Black%";
        """
result = pd.read_sql(query, conn)
result

-- 4. Character Count: Find all genres that are exactly 5 characters long (using the underscore _ wildcard).

query = """
        SELECT title
        FROM Netflix
        WHERE genre LIKE "_____";
        """
result = pd.read_sql(query, conn)
result
