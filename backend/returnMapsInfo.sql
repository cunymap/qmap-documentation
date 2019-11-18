---------------------------------------------------------------------------------------
-- Name - returnMapsInfo.sql
-- Author - Evan Wu
-- Date Last Modified - 11-17-2019
-- Description - SQL File that contains query to pull a Degree Map.
---------------------------------------------------------------------------------------

-- Set @map_id to a specified map value, obtained from user input.
-- Right now, it's set to 1 just as a random test.
SET @map_id = 1;

SELECT map_id, semester_num, F.course_id, G.subject, G.catalog, descr, min_units, max_units, designation
FROM (
SELECT map_id, semester_num, course1 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course1)
UNION
select map_id, semester_num, course2 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course2)
UNION
select map_id, semester_num, course3 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course3)
UNION
select map_id, semester_num, course4 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course4)
UNION
select map_id, semester_num, course5 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course5)
UNION
select map_id, semester_num, course6 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course6)
UNION
select map_id, semester_num, course7 AS 'course_id'
FROM MAPS_DMAPS_LISTS
WHERE map_id = @map_id AND !ISNULL(course7)
) AS F
INNER JOIN MAPS_CRSE_CATALOG AS G
	ON F.course_id = G.course_id
ORDER BY map_id, semester_num, course_id