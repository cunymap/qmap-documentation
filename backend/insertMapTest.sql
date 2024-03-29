---------------------------------------------------------------------------------------
-- Name - insertMapTest.sql
-- Author - Evan Wu
-- Date Last Modified - 11-17-2019
-- Description - SQL File that contains query to insert into both MAPS_DMAPS_META and MAPS_DMAP_LISTS. 
-- 				This one contains a test input for a baseline.
---------------------------------------------------------------------------------------

-- The following variable statements need input from the user.
-- map_name
-- degree
-- start_year
-- institution_id

-- The following variables should be automatically obtained.
-- map_id - Set to automatically increment on input by 1.
-- active_status - By default, any inserted map is active.
-- submit_id/last_update - Should be automatically obtained from credentials.
-- submit_time/last - Uses current server time stamp.

SET @map_name = 'Test';
SET @degree = 'Degree Type';
SET @start_year = 'Q1 2020';
SET @institution_id = '0';
SET @submit_id = '12345678';
SET @submit_time = CURRENT_TIMESTAMP();
SET @last_update = @submit_id;
SET @last_update_time = @submit_time;

INSERT INTO MAPS_DMAPS_META (map_name, degree, start_year, institution_id, submit_id, submit_time, last_update, last_update_time)
VALUES (@map_name, @degree, @start_year, @institution_id, @submid_id, @submit_time, @last_update, @last_update_time);

-- MAP_ID is generated by the previous insert statement.
-- For each Semester/Class variable below, it would have to come from user input. 

SET @map_id = last_insert_id();
SET @sem1_class1 = 'C000027';
SET @sem1_class2 = 'C000029';
SET @sem1_class3 = 'C000032';
SET @sem1_class4 = 'C000035';
SET @sem1_class5 = 'C000036';
SET @sem1_class6 = 'C000039';
SET @sem1_class7 = 'C000040';
SET @sem2_class1 = 'C000041';
SET @sem2_class2 = 'C000049';
SET @sem2_class3 = 'C000051';
SET @sem2_class4 = 'C000052';
SET @sem2_class5 = 'C000054';
SET @sem2_class6 = 'C000055';
SET @sem2_class7 = 'C000056';
SET @sem3_class1 = 'C000057';
SET @sem3_class2 = 'C000058';
SET @sem3_class3 = 'C000059';
SET @sem3_class4 = 'C000062';
SET @sem3_class5 = 'C000064';
SET @sem3_class6 = 'C000067';
SET @sem3_class7 = 'C000071';
SET @sem3_class1 = 'C000073';
SET @sem3_class2 = 'C000075';
SET @sem3_class3 = 'C000081';
SET @sem3_class4 = 'C000082';
SET @sem3_class5 = 'C000083';
SET @sem3_class6 = 'C000084';
SET @sem3_class7 = 'C000091';
SET @sem4_class1 = 'C000095';
SET @sem4_class2 = 'C000096';
SET @sem4_class3 = 'C000097';
SET @sem4_class4 = 'C000098';
SET @sem4_class5 = 'C000102';
SET @sem4_class6 = 'C000103';
SET @sem4_class7 = 'C000109';
SET @sem5_class1 = 'C000110';
SET @sem5_class2 = 'C000111';
SET @sem5_class3 = 'C000112';
SET @sem5_class4 = 'C000114';
SET @sem5_class5 = 'C000115';
SET @sem5_class6 = 'C000117';
SET @sem5_class7 = 'C000118';
SET @sem6_class1 = 'C000121';
SET @sem6_class2 = 'C000123';
SET @sem6_class3 = 'C000124';
SET @sem6_class4 = 'C000126';
SET @sem6_class5 = 'C000127';
SET @sem6_class6 = 'C000128';
SET @sem6_class7 = 'C000129';
SET @sem7_class1 = 'C000130';
SET @sem7_class2 = 'C000163';
SET @sem7_class3 = 'C000165';
SET @sem7_class4 = 'C000170';
SET @sem7_class5 = 'C000173';
SET @sem7_class6 = 'C000187';
SET @sem7_class7 = 'C000188';
SET @sem7_class1 = 'C000189';
SET @sem7_class2 = 'C000190';
SET @sem7_class3 = 'C000193';
SET @sem7_class4 = 'C000209';
SET @sem7_class5 = 'C000216';
SET @sem7_class6 = 'C000220';
SET @sem7_class7 = 'C000226';
SET @sem8_class1 = 'C000235';
SET @sem8_class2 = 'C000237';
SET @sem8_class3 = 'C000246';
SET @sem8_class4 = 'C000247';
SET @sem8_class5 = 'C000249';
SET @sem8_class6 = 'C000253';
SET @sem8_class7 = 'C000262';

INSERT INTO MAPS_DMAPS_LISTS
VALUES (@map_id, '1', @sem1_class1, @sem1_class2, @sem1_class3, @sem1_class4, @sem1_class5, @sem1_class6, @sem1_class7),
(@map_id, '2', @sem2_class1, @sem2_class2, @sem2_class3, @sem2_class4, @sem2_class5, @sem2_class6, @sem2_class7),
(@map_id, '3', @sem3_class1, @sem3_class2, @sem3_class3, @sem3_class4, @sem3_class5, @sem3_class6, @sem3_class7),
(@map_id, '4', @sem4_class1, @sem4_class2, @sem4_class3, @sem4_class4, @sem4_class5, @sem4_class6, @sem4_class7),
(@map_id, '5', @sem5_class1, @sem5_class2, @sem5_class3, @sem5_class4, @sem5_class5, @sem5_class6, @sem5_class7),
(@map_id, '6', @sem6_class1, @sem6_class2, @sem6_class3, @sem6_class4, @sem6_class5, @sem6_class6, @sem6_class7),
(@map_id, '7', @sem7_class1, @sem7_class2, @sem7_class3, @sem7_class4, @sem7_class5, @sem7_class6, @sem7_class7),
(@map_id, '8', @sem8_class1, @sem8_class2, @sem8_class3, @sem8_class4, @sem8_class5, @sem8_class6, @sem8_class7)