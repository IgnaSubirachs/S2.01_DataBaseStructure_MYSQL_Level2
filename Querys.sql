SELECT V.title, COUNT(*) AS total_likes
FROM VideoReaction VR
JOIN Video V ON VR.video_id = V.video_id
WHERE VR.reaction = 'like'
GROUP BY V.video_id
ORDER BY total_likes DESC;

SELECT C.name AS channel_name, COUNT(*) AS total_subscribers
FROM Subscription S
JOIN Channel C ON S.channel_id = C.channel_id
GROUP BY C.channel_id
ORDER BY total_subscribers DESC;

SELECT V.title
FROM Video V
JOIN VideoTag VT ON V.video_id = VT.video_id
JOIN Tag T ON VT.tag_id = T.tag_id
WHERE T.name = 'Gaming';

SELECT name
FROM Playlist
WHERE user_id = 1 AND visibility = 'public';

SELECT V.title
FROM Playlist P
JOIN PlaylistVideo PV ON P.playlist_id = PV.playlist_id
JOIN Video V ON PV.video_id = V.video_id
WHERE P.name = 'My Favorites';

SELECT U.username, C.comment_text
FROM Comment C
JOIN User U ON C.user_id = U.user_id
JOIN Video V ON C.video_id = V.video_id
WHERE V.title = 'Minecraft Ep.1';

SELECT C.comment_text, COUNT(*) AS likes
FROM CommentReaction CR
JOIN Comment C ON CR.comment_id = C.comment_id
WHERE CR.reaction = 'like'
GROUP BY CR.comment_id
ORDER BY likes DESC;
