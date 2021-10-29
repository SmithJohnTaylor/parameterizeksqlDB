create or replace stream RATINGS (rating_id BIGINT, user_id INT, stars INT, route_id INT, rating_time BIGINT, channel VARCHAR, message VARCHAR) WITH (KAFKA_TOPIC='ratings',VALUE_FORMAT='json');
create or replace stream FILTEREDRATINGS as select * from RATINGS where stars > 4 emit changes;
