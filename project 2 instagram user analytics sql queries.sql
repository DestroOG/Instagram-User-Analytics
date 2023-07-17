/* Most Loyal User */
use ig_clone;
 select * from users
 order by created_at
 limit 5
 
 /* Inactive Users */
select * from photos;
select * from users;
select username from users;
select username from users LEFT JOIN photos on users.id = photos.user_id where photos.id is NULL;

/* Contest Winner (most likes on single photo) */
select * from likes;
select photo_id, count(photo_id) as count_value
from likes 
group by photo_id
order by count_value desc;
/* photo_145 has most likes (48) */
select id, user_id from photos 
where id = 145;
/* photo_id 145 was posted by user 52 */
select username from users
where id = 52;
/* Zack_Kemmer93 is the username of user 52 */

/* 5 most commanly used hashtags */
select * from tags;
SELECT * from photo_tags;
SELECT count(photo_id) from photo_tags;
select photo_id, count(*) from photo_tags
group by photo_id;
SELECT tags.tag_name,COUNT(*) AS tag_count
FROM photo_tags
JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY tag_count DESC 
LIMIT 5;

-- Most Active Weekday
select * from users;
select weekday(created_at) as weekday,
count(users.username) as num_users from ig_clone.users
group by weekday
order by num_users DESC 

select count(id) as 
'Total Photos' from photos;

-- Total Number of Users 
select count(id) as 'Total Users'  from users;

-- Bots 
select likes.user_id, 
count(likes.photo_id) num_likes from likes
group by likes.user_id
order by num_likes desc)
select * from photo_count
where num_likes = (select count(*) from photos);
select count(num_likes) from 

