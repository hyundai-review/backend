INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (616446, '형제들', '2024-10-10', '', '''형제들''은 새사람이 되어 정직하게 살고자 하는 전과자(조시 브롤린)가 항상 자신을 미치게 만드는 쌍둥이 형제(피터 딘클리지)와 재회하면서 의도치 않게 일생일대의 한탕을 노리고 국토를 횡단하게 되는 이야기다. 두 형제가 서로 죽여버리고 마는 불상사를 막으려면 총알과 법망, 남의 말이라곤 전혀 듣지 않는 어머니를 피해 가며 잃어버린 가족애를 되찾아야 한다.', 89, '', 'RELEASED', 401.551000, 6.146000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 616446 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 616446 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 616446 AND g.name = '범죄';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조쉬 브롤린', '/sX2etBbIkxRaCsATyw5ZpOVMPTD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조쉬 브롤린');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Moke Munger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = '조쉬 브롤린';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '피터 딘클리지', '/9CAd7wr8QZyIN0E7nm8v1B6WkGn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '피터 딘클리지');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jady Munger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = '피터 딘클리지';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '글렌 클로즈', '/eNTn3OmlnsQYLIp7HVGeH9kOJiA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '글렌 클로즈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cath Munger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = '글렌 클로즈';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '브랜든 프레이저', '/tFj5PaWWQbb8rHBBhu1EHklznph.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '브랜든 프레이저');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Farful', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = '브랜든 프레이저';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '테일러 페이지', '/KTX1trmIfVa7MFkZmES1MVjl79.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '테일러 페이지');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Abby Munger-Jacobson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = '테일러 페이지';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'M. Emmet Walsh', '/d9XViKO9AELfSvUZAwzaXMkrGxl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'M. Emmet Walsh');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Judge Farful', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'M. Emmet Walsh';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jennifer Landon', '/o1XDkIoyZTwjSXF9SE7mTZb8Xeb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jennifer Landon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Cath', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Jennifer Landon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joshua Mikel', '/wSi44oJjOHYctuni0vmKoU0Jfmh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joshua Mikel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Glenn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Joshua Mikel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마리사 토메이', '/5w6qM8FWsl5SutKSpx6Va64eCTE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마리사 토메이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bethesda Waingro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = '마리사 토메이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'William Tokarsky', '/js1FLRdgHMHTuDwsiIgv6i18Ykn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'William Tokarsky');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Muzzy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'William Tokarsky';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ted Ferguson', '/9dCoanLJ5Xr9sM6fo9P58aUz6oa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ted Ferguson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dad-Daddy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Ted Ferguson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrew Brodeur', '/6rQjH8cwxaSqAsDyWeNV4ezVtCY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrew Brodeur');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Avery Jacobson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Andrew Brodeur';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt Lewis', '/zyTwSDn4mVr5uISxFRiDfPZFRJV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt Lewis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Swofford', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Matt Lewis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Margo Moorer', '/9BqVk8t7Mw9RiY4FILgNfnwm2eD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Margo Moorer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Jacobon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Margo Moorer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gralen Bryant Banks', '/mLxMcf6IoX6e0K1YpERdKY4t0Hc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gralen Bryant Banks');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Jacobson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Gralen Bryant Banks';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Don Stallings', '/8vi0Q4HsKvHmNGeLd44QrJW3SI3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Don Stallings');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Freddie Unk', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Don Stallings';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Roger Payano', '/uDDPE8oyAd5D70DWzGS6AbY7wHh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Roger Payano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anthony', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Roger Payano';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pat Fisher', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pat Fisher');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gamma', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Pat Fisher';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brooks Indergard', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brooks Indergard');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Moke', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Brooks Indergard';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jonathan  Aidan Cockrell', '/zy1nM7NxobW6WOVRlUBxEfd6vTM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonathan  Aidan Cockrell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Jady', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Jonathan  Aidan Cockrell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nathan Hesse', '/d3cdL1xbsDr2nfi4nu5LxKjzaGQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nathan Hesse');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crabcake', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Nathan Hesse';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Taylor St. Clair', '/d9dVvcJsFBB76chmYl7kPRFXbH8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Taylor St. Clair');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Wabi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Taylor St. Clair';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alonzo Ward', '/fQVnzaroPSKzs4KFSsXiGATRWRn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alonzo Ward');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Old Security Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Alonzo Ward';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Greg Weeks', '/jvsDdMCMEWTPsSi8wW1eELiL3ra.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Greg Weeks');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paramedic', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Greg Weeks';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Binkerd', '/cZ9IYhromGxrEMdnS7tfcgEcgBX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Binkerd');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marisa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Samantha Binkerd';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Suehyla El-Attar', '/d7vKO2lk8ojTaleeLU8yjhpFGFb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Suehyla El-Attar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Waitress', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Suehyla El-Attar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mike Howell', '/kU2Ng54MG0y3l5JPKRq4Z7Dm1Ne.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mike Howell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Utility Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Mike Howell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'B.J. Winfrey', '/tWsPxIfuM1f76njVTBNIR4nOsLP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'B.J. Winfrey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cabbie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'B.J. Winfrey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Swift Rice', '/uaUNKMxbDh5U6HBb8QWF7QNLbDZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Swift Rice');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mall Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Swift Rice';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Denise Arribas', '/50bTPptgRpXWgQu0tW7NPtqpslv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Denise Arribas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'C.O. Ruiz', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Denise Arribas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Devyn Dalton', '/rYkYdtv2grwzDX4RFCIK3zzP4gD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Devyn Dalton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Samuel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 616446 AND a.name = 'Devyn Dalton';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Max Barbakow', '/nJjznElTpKtQNOoGRaFtDIgcnqi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Max Barbakow');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 616446 AND d.name = 'Max Barbakow';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/Akweo95FGyDpucYVT81h0SbX8Ky.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 616446;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/bAO9hLGRWOJMUFXmKwa4kST6I5N.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 616446;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (978796, '백맨', '2024-09-20', '', '', 92, '', 'RELEASED', 377.710000, 6.390000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 978796 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 978796 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '샘 클라플린', '/e5CU4tjCNZFfm7ITmZfzjZse2Bb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '샘 클라플린');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Patrick McKee', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = '샘 클라플린';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Antonia Thomas', '/ybmnPYUzcr3RMdaXnZIw2jEw9ju.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Antonia Thomas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Karina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Antonia Thomas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Caréll Vincent Rhoden', '/vaEX3jxuAHQ6qQZ2TNuoDK0UqBX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Caréll Vincent Rhoden');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jake McKee', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Caréll Vincent Rhoden';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Will Davis', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Will Davis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bagman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Will Davis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adelle Leonce', '/zL3CdzHhQQdqNi6hrronOoh9jHQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adelle Leonce');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anna', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Adelle Leonce';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'William Hope', '/blKMEeCftWVBPI2hqvzycmdE9nS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'William Hope');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chief Isaacs', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'William Hope';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Cree', '/oH9uSQMJPdFHeVggqvMwheW7nZl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Cree');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Liam McKee', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Steven Cree';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sharon D. Clarke', '/uNWPeItDgQvUDBJuY0M6ZegylrE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sharon D. Clarke');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbara', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Sharon D. Clarke';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Henry Pettigrew', '/5RzqnELZmgPpVILLFGfhVGim6wu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Henry Pettigrew');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Don', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Henry Pettigrew';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Neil Linpow', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Neil Linpow');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Officer Rawls', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Neil Linpow';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Frankie Corio', '/4NtcQooPhDYOr5lzkk5mgtSVZcl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Frankie Corio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emily', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 978796 AND a.name = 'Frankie Corio';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Colm McCarthy', '/iTVWq0wCVoKf6pfrJvdTlVWyems.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Colm McCarthy');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 978796 AND d.name = 'Colm McCarthy';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hzrvol8K2VWm2BsDTwb8YvRMzIH.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 978796;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/mpMDztY5OmV7i4ypYpWgqsP4DHs.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 978796;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1142518, '자유', '2024-11-01', '', '1980년대 프랑스에서 가장 악명 높았던 비폭력 강도 브루노 술락의 실화를 바탕으로 한 이야기다. 그는 여러 번 강도질을 하고, 경찰에 잡혀도 대담하게 탈출해 대중의 관심을 끌었다. 그가 매번 탈출한 이유는 사랑하는 연인이자 공범인 애니와 다시 만나기 위해서였고, 결국 그는 프랑스의 공공의 적 1호이자 자유의 아이콘이 되었다.', 110, '', 'RELEASED', 658.892000, 6.800000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1142518 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1142518 AND g.name = '로맨스';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1142518 AND g.name = '드라마';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lucas Bravo', '/uO6vMlJBMASyOQMisvnPehjsfJB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lucas Bravo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bruno Sulak', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Lucas Bravo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yvan Attal', '/2VaxsiFuad8uHHWTM6Fc71wtNCx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yvan Attal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'George Moréas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Yvan Attal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Léa Luce Busato', '/TeeCdnPoSWH4ZihjXh71v4tLTw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Léa Luce Busato');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Annie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Léa Luce Busato';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steve Tientcheu', '/zhKrlGuSLuRPg8Jev18k5z7SHwE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steve Tientcheu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Drago', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Steve Tientcheu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Ayala', '/g1FlhpnXANAvr80osb0rpazI5V6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Ayala');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Belina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'David Ayala';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Léo Chalié', '/vmuNIVYP9lbuMcxNa4i3CgXLWuU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Léo Chalié');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marika', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Léo Chalié';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Slimane Dazi', '/tHh9XviWroQWkKOa2jRPh5EkHTW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Slimane Dazi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jean-Louis', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Slimane Dazi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Murgia', '/bgFLJDc4KzNG5dN7mZeGsazbKvl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Murgia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Patrick', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'David Murgia';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Radivoje Bukvić', '/64B4gbIM5RsoPDBhKcMa0AmN8xQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Radivoje Bukvić');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Steve(as Rasha Bukvic)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Radivoje Bukvić';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '멜라니 로랑', '/pKV3XJ6mlzfj0B0MGS8uMcMI9cl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '멜라니 로랑');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = '멜라니 로랑';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christophe Kourotchkine', '/b7pBsFd9OrphPsWzO9qB0x2wzvM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christophe Kourotchkine');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Christophe Kourotchkine';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jesse Guttridge', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jesse Guttridge');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1142518 AND a.name = 'Jesse Guttridge';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '멜라니 로랑', '/pKV3XJ6mlzfj0B0MGS8uMcMI9cl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '멜라니 로랑');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1142518 AND d.name = '멜라니 로랑';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/trN0zFcrtcCPLWyqqQEVoToztNk.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1142518;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/n9Do4rv1Hl3QvQLMmT5w6pBadqq.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1142518;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1144962, 'Transmorphers: Mech Beasts', '2023-06-09', '', '', 84, '', 'RELEASED', 358.940000, 5.400000, 65452, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1144962 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1144962 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tom Arnold', '/z2ajL1ozVCS4Ug04zOGCNH06OPP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tom Arnold');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brady', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Tom Arnold';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tania Fox', '/dlQJEd0XxzyCKR8GyDPkTLMNKU3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tania Fox');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lana', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Tania Fox';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jolene Anderson', '/l4SPMWGpEpVvA5wrLG1vguJ99ZZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jolene Anderson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agnes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Jolene Anderson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrew Rogers', '/oSBBuN3SWGeYIsIm1RkyK7qWPLj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrew Rogers');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Watts', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Andrew Rogers';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mica Javier', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mica Javier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Mica Javier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chad Ridgely', '/1g663csevlwCEksyFLJHSqHPP6S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chad Ridgely');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Wilks', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Chad Ridgely';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anthony Jensen', '/4BWRrZ6F2wi99kWJlPSq0wJaKcJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anthony Jensen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gen Palmer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Anthony Jensen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mark Justice', '/8QEynj64MxUBYWQpsyNOpwcH7At.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mark Justice');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lt Ryan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Mark Justice';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jessica DeBonville', '/kHIVrywxowkT1SM2LfSEjS31OcS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jessica DeBonville');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Connor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Jessica DeBonville';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlotte Bjornbak', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlotte Bjornbak');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lt May', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Charlotte Bjornbak';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Gademske', '/wgvHF93BO0VxQA3HemklufBFEX4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Gademske');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trevor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Matthew Gademske';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Geena Alexandra', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Geena Alexandra');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reena', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Geena Alexandra';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Todd Karner', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Todd Karner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mark', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Todd Karner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Desaré Foster', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Desaré Foster');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juniper', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Desaré Foster';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christopher Michael Carney', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christopher Michael Carney');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Prof Lang', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Christopher Michael Carney';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Angel Mendoza', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Angel Mendoza');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Prof Derek', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1144962 AND a.name = 'Angel Mendoza';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Michael Su', '/yNvnLqEHb2FtdB7AW2O0lZelKBO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Michael Su');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1144962 AND d.name = 'Michael Su';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/oqhaffnQqSzdLrYAQA5W4IdAoCX.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1144962;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/tCKWksaQI8XkAQLVou0AlGab5S6.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1144962;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (823219, '플로우', '2024-08-29', '', '대홍수가 세상을 덮친 뒤, 유일한 피난처가 된 배 한 척을 타고 다양한 동물 친구들과 항해를 시작한 ‘고양이’의 눈부신 모험담', 85, 'ALL', 'RELEASED', 352.024000, 8.600000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 823219 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 823219 AND g.name = '판타지';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 823219 AND g.name = '모험';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Gints Zilbalodis', '/kVRvFXr1Vzyy7KFYGlzVj0P7mtC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Gints Zilbalodis');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 823219 AND d.name = 'Gints Zilbalodis';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/kX9gzHyfwXCkTszBcPekQZxPnzP.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 823219;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/b3mdmjYTEL70j7nuXATUAD9qgu4.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 823219;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (726139, '탈출: 프로젝트 사일런스', '2024-07-11', '생존자 전원이 타겟이 된다', '한치 앞도 구분할 수 없는 짙은 안개 속 붕괴 직전의 공항대교에 고립된 사람들이 그 안에 도사리고 있는 예기치 못한 위협으로부터 살아남기 위해 고군분투하는 이야기.', 96, '15', 'RELEASED', 366.313000, 7.000000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 726139 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 726139 AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 726139 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 726139 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '이선균', '/mwF2HgyEF2UzxSvNRJEtbWlKbAj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '이선균');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cha Jung-won', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '이선균';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '주지훈', '/7PYfUrBBXhYv5PIsTalJhjbRteg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '주지훈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jobak', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '주지훈';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '김희원', '/sDCxskfmmNidOjV2LwsWh9dAVbN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '김희원');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Yang', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '김희원';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '문성근', '/wQjOvAFqCItwMw7dxa486KnGgEE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '문성근');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Byung-hak', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '문성근';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '예수정', '/rwGPhu8Ge36eMkrOlzfdKKFargw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '예수정');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soon-ok', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '예수정';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '김태우', '/wbuNQxRUdykKZgCiwchZYmPQMmJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '김태우');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jung Hyun-baek', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '김태우';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '박희본', '/uSpV4VUiwffp6SdFxSmD56Sf6qU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '박희본');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mi-ran', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '박희본';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '박주현', '/2xfmCqWWNE3wLAUg2WlByP9kvMP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '박주현');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yu-ra', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '박주현';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '김수안', '/hmPZhhoeUY89Rys6LrsjpTMeoEN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '김수안');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cha Kyung-min', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '김수안';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '하도권', '/lOiNEmbHhMkX8mICJfu9R1kzC36.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '하도권');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Kang', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '하도권';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '장광', '/7lF6Orcis0qnPaSMCGotPYwD26V.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '장광');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Defense Minister', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '장광';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '최정우', '/doHUwUDRML1uo0PVVRXblGAJhN3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '최정우');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chief secretary', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '최정우';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '구성환', '/9oSGpqUOVVtL9vsAxZNWdsaKQM9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '구성환');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bus driver', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '구성환';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '박호산', '/gL5eN7UvYlseBD0rjdjgjiVKuQJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '박호산');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Intelligence Commander', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '박호산';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '문병주', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '문병주');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'BJ', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '문병주';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Song You-hyun', '/2IV7tapGhBwF3XsWA1Z1oO94Mms.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Song You-hyun');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kyung-min''s mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = 'Song You-hyun';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jang Tae-min', '/zxoUiJ1fNFzvHNa1LdOLR6iI0aD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jang Tae-min');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Official', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = 'Jang Tae-min';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yoo Yeon', '/sCfAcXsYlSmXsONGAfa0m33HmXg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yoo Yeon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Official', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = 'Yoo Yeon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kwak Jin-seok', '/zjWpIbXK5zH5lvp0dWCkwPH7bqE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kwak Jin-seok');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Commando commander', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = 'Kwak Jin-seok';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '안성봉', '/auBLxp6DtvOsY9OoQZXi45613cS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '안성봉');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Staff sergeant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 726139 AND a.name = '안성봉';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '김태곤', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '김태곤');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 726139 AND d.name = '김태곤';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/rXuSca6qEb4xPrSRT7XRzYCFbZB.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 726139;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hPIWQT70wQK6akqfLXByEvr62u0.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 726139;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1079091, '우리가 끝이야', '2024-08-07', '15초면 충분해요. 모든 게 뒤바뀌기까지', '아버지의 장례식을 멋지게 망치고 아지트로 향한 ‘릴리’는 어딘가 위태롭지만 매력적인 남자 ‘라일’에게 순식간에 마음을 빼앗긴다. 새로운 도시에서 자신의 이름을 건 꽃집을 오픈한 릴리는 운명처럼 라일을 다시 만나게 되고 걷잡을 수 없는 사랑에 빠져든다. 그러던 어느 날, 어린 시절의 모든 상처를 알고 있는 첫사랑 ‘아틀라스’와 우연히 재회한 후 감당하기 벅찬 라일의 위협적인 모습을 목격하게 되고 완벽했던 관계가 순식간에 요동치면서 릴리는 피할 수 없는 선택의 기로에 서게 되는데… 외면하고 싶지만 마주해야 하는 사랑과 선택의 순간 올가을, 모두에게 위로와 용기를 선사하는 특별한 이야기!', 131, '15', 'RELEASED', 344.514000, 7.200000, 348276888, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1079091 AND g.name = '로맨스';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1079091 AND g.name = '드라마';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '블레이크 라이블리', '/rkGVjd6wImtgjOCi0IpeffdEWtb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '블레이크 라이블리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lily Bloom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = '블레이크 라이블리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Justin Baldoni', '/2sc6iUWljADnqtjsaKU3s6f0DGW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Justin Baldoni');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ryle Kincaid', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Justin Baldoni';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제니 슬레이트', '/iNpXig5Djkh5moYG4TCekIATs5B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제니 슬레이트');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Allysa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = '제니 슬레이트';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '브랜든 스클레나', '/unM5wewbqrmE2cf6DSyyKLeA05I.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '브랜든 스클레나');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Atlas Corrigan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = '브랜든 스클레나';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hasan Minhaj', '/6vHHhLnbKBCPmYc90qAV2Cde95F.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hasan Minhaj');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marshall', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Hasan Minhaj';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kevin McKidd', '/ekCsHT7eXmqy9aqOVLuMb7fCqMN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kevin McKidd');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Andrew Bloom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Kevin McKidd';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amy Morton', '/2qLHQpxvFMlMKf7qeBKGRTsJF4S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amy Morton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jenny Bloom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Amy Morton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alex Neustaedter', '/nuPCIJ3bV5CK1qq3MOFgQpNt2KR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alex Neustaedter');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Atlas Corrigan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Alex Neustaedter';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Isabela Ferrer', '/8TbzPTGSBI6pEuMMHI9Q98Ii9zJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Isabela Ferrer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Lily Bloom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Isabela Ferrer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robert Clohessy', '/lhNUk6PF0mNhgbvTDxXfIy4uhRe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robert Clohessy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sheriff', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Robert Clohessy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robin S. Walker', '/wj91MUvvpaJrT1KoSmnBXFBBp08.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robin S. Walker');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor Johnson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Robin S. Walker';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emily Baldoni', '/zJoIHD7MWd0jTPszxOjHskm85Xj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emily Baldoni');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor Julie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Emily Baldoni';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adam Mondschein', '/sGIztpuSVvAwBw4E0PTeZuTjRup.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adam Mondschein');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor Dunbar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Adam Mondschein';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Caroline Siegrist', '/rEaCQrG7pJsg5Hu6ayjBz5qZdd4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Caroline Siegrist');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Katie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Caroline Siegrist';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robyn Lively', '/tz4oKXOkJhHZezaQUTgo66gPn77.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robyn Lively');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ms. Byland', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Robyn Lively';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Megan Robinson', '/vld384CUSqf2uYaxtUrs1WFBbod.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Megan Robinson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ms. Smith', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Megan Robinson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steve Monroe', '/8dwHkvyiWcq1ntIDLNLwRJnw8Z3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steve Monroe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Realtor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Steve Monroe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daphne Zelle', '/s3tusiCyCyxdwfuLhDeI0Tg9pQy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daphne Zelle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Female Waiter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1079091 AND a.name = 'Daphne Zelle';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Justin Baldoni', '/2sc6iUWljADnqtjsaKU3s6f0DGW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Justin Baldoni');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1079091 AND d.name = 'Justin Baldoni';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/287MYoxjfINSyfaaV636Z2ioR36.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1079091;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/zAqBIeO71BFL7bAtP5TFzVjVamy.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1079091;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (824003, 'Diabolik chi sei?', '2023-11-30', '', '', 124, '', 'RELEASED', 354.985000, 6.278000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 824003 AND g.name = '범죄';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 824003 AND g.name = '액션';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Giacomo Gianniotti', '/gym2kTV6aqHYRK2zFEhVnYBuPiR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Giacomo Gianniotti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diabolik', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Giacomo Gianniotti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miriam Leone', '/kOl4gte94tJKXl8csCEYIxhZV0B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miriam Leone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eva Kant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Miriam Leone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Valerio Mastandrea', '/tE7JkSuyv2N8vtEN0YypsCAxW9B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Valerio Mastandrea');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ginko', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Valerio Mastandrea';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '모니카 벨루치', '/7g3k3u2gZpE7XU8GRYwHDuN1jlM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '모니카 벨루치');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Altea di Vallenberg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = '모니카 벨루치';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pier Giorgio Bellocchio', '/hZTd1cLRnlB9eibCZTeBq1UvDOQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pier Giorgio Bellocchio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sgt. Palmer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Pier Giorgio Bellocchio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chiara Martegiani', '/5jZR63kROmSBvfLl6tbWtbMXBVE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chiara Martegiani');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elisa Coen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Chiara Martegiani';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Massimiliano Rossi', '/3kgkMSYty4mqBVLCO70b3gXtPnh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Massimiliano Rossi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diego Manden', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Massimiliano Rossi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mario Sgueglia', '/1dwuog4ZNhKTImVPyI2bpDFec47.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mario Sgueglia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emilio', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Mario Sgueglia';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Francesco Turbanti', '/xGkFVYmyHvwxwpotIOSRFI9mTn1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Francesco Turbanti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Loris', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Francesco Turbanti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emanuele Linfatti', '/c23xFddMW3hqby3fnu5O730Yv9Z.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emanuele Linfatti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Martin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Emanuele Linfatti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michele Ragno', '/36rBuYhPXt8dZXlE9JxI0AUD4Kg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michele Ragno');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vladimiro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Michele Ragno';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amanda Campana', '/q1Y2lRdRT2Fa23eVASDUbhvaBFh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amanda Campana');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Giovane truccatrice', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Amanda Campana';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrea Arru', '/9LYZo5m3AH95OGVvMu96P61wYeX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrea Arru');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diabolik dodicenne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Andrea Arru';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Max Gazzè', '/fTjVYjocw9op9i4UEvA3JwPVEcG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Max Gazzè');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Giulio Mondan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Max Gazzè';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Carolina Crescentini', '/fIacIJRxLBU2bjzYon0LPBBnqwW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Carolina Crescentini');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gabriella Bauer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Carolina Crescentini';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paolo Calabresi', '/flx99TjnqZvvJrTjG1CG93YTWJT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paolo Calabresi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'King', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Paolo Calabresi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lorenzo Zurzolo', '/aZCIOFckGuxHXbYSQAlgavwOxPU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lorenzo Zurzolo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diabolik ventenne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Lorenzo Zurzolo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Barbara Bouchet', '/fVrl3R8UQGFrhfuId7MRqWpnOsA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Barbara Bouchet');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Contessa Wiendemar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Barbara Bouchet';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Giacomo Giorgio', '/jCxEDD4UWhSVfjB7ARIvfnvZPHw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Giacomo Giorgio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agente Zeman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Giacomo Giorgio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paolo Gasparini', '/4iw7m0L2CnFJwsXQTZ0rC70ej9n.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paolo Gasparini');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Autista di Altea di Vallenberg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 824003 AND a.name = 'Paolo Gasparini';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Antonio Manetti', '/isbb4gEK4AKp1JcD8tL4qEX8ku1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Antonio Manetti');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 824003 AND d.name = 'Antonio Manetti';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Marco Manetti', '/hdTxWCnCr2BYXDkEcfs5beGNRD6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Marco Manetti');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 824003 AND d.name = 'Marco Manetti';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/1DAXwi4y941ryPoGbzUlFEEiPAo.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 824003;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hLYH6wbi3Mgscdv2KuYcTdWGlUV.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 824003;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1354627, 'SpongeBob Squarepants: Kreepaway Kamp', '2024-10-10', '', '', 45, '', 'RELEASED', 332.367000, 7.220000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1354627 AND g.name = 'TV 영화';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1354627 AND g.name = '가족';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1354627 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1354627 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1354627 AND g.name = '애니메이션';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '톰 케니', '/dKOxpGnRkIMaPkZSHKIns99WxQa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 케니');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'SpongeBob / Cabin / Clam / Snail / Tall Tail / Vampire Monster / Sea Urchins / Jellyfish / Anchovies (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = '톰 케니';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bill Fagerbakke', '/zntKKc1uT53BnIihmzbq601eWKZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bill Fagerbakke');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Patrick / Anchovy #2 / Roh / Sea Urchins / Anchovies (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Bill Fagerbakke';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rodger Bumpass', '/lGQkw6adxqB6Hcm7VK8nVHbKupe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rodger Bumpass');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Squidward / Regigilled / The Creeper / Sea Urchins (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Rodger Bumpass';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '클랜시 브라운', '/1JeBRNG7VS7r64V9lOvej9bZXW5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '클랜시 브라운');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Krabs / Anchovies (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = '클랜시 브라운';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Carolyn Lawrence', '/7Ehx4bEO8loovbmbntXl0sBNjtj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Carolyn Lawrence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sandy / Rea / Teen Girls / Sea Urchins / Anchovies (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Carolyn Lawrence';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mr. Lawrence', '/9EOlQ6YG8zQOwTn10dQewYOyQ6C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mr. Lawrence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Plankton / Larry the Lobster / Anchovy #1 / Sea Bunnies / Sea Urchins (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Mr. Lawrence';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lori Alan', '/cavATg4fX0zAl2MHwlt1IZei7EI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lori Alan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pearl / Teen Girls (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Lori Alan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Carlos Alazraqui', '/d2hufnjlfsZiY7N9NLZ6b7FE1IZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Carlos Alazraqui');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Harvey / Anchovy #3 / Sea Bunnies / Sea Urchins / Nobby / Orange Fish (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Carlos Alazraqui';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '디 브래들리 베이커', '/9oFnToDZWp0I484s7Ua1EzNQQ2m.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '디 브래들리 베이커');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bubble Bass / Kevin C. Cucumber / Craig Mammalton / Kidferatu / Rock Monster / Anchovies (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = '디 브래들리 베이커';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'India de Beaufort', '/a0hOqwM1eBHzhSf1VkLnVXjgL1j.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'India de Beaufort');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maisey Manes (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'India de Beaufort';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '그레이 딜라일', '/vrUHaXe1pG56yZkgH7Hs3LGRLTT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '그레이 딜라일');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Preda Tory / Big Roxie / Elwood (voice) (as Grey DeLisle)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = '그레이 딜라일';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mary Jo Catlett', '/72XlPyoJS8RSze69hrv0xeUFppt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mary Jo Catlett');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Puff (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Mary Jo Catlett';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John Gegenhuber', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Gegenhuber');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jimmy Blobfish / Anchovies (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'John Gegenhuber';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jess Harnell', '/zQ2zg7PL3ut4JhfXMKSRV4FMnxR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jess Harnell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Kraken (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Jess Harnell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kate Higgins', '/kFAAyE63EWFiNdJEjwD534A7hQY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kate Higgins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Roxie / Narlene (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Kate Higgins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sirena Irwin', '/pK2OgTLhjCMJdTySlztR8ojxbtq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sirena Irwin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lady Upturn / Nurse Helga / Mo / Teen Girls (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Sirena Irwin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jill Talley', '/x0r43qyI9KNEyb5RsF0MckqxgfM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jill Talley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Karen / Sea Urchins (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Jill Talley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexander Ward', '/qGJGhAVeCLNWtGr7LcYKci5WQjS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexander Ward');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nosferatu', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1354627 AND a.name = 'Alexander Ward';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Ian Vasquez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Ian Vasquez');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1354627 AND d.name = 'Ian Vasquez';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Dave Cunningham', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Dave Cunningham');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1354627 AND d.name = 'Dave Cunningham';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Fred Osmond', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Fred Osmond');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1354627 AND d.name = 'Fred Osmond';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Kurt Snyder', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Kurt Snyder');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1354627 AND d.name = 'Kurt Snyder';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Sherm Cohen', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Sherm Cohen');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1354627 AND d.name = 'Sherm Cohen';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/blRsgsexoBqnjcEJkV8beKAVT6J.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1354627;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/aFDYcmwEWRiEh58Ri1tMpCUWPBp.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1354627;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (653346, '혹성탈출: 새로운 시대', '2024-05-08', '세상의 주인이 바뀌었다', '진화한 유인원과 퇴화된 인간들이 살아가는 땅. 유인원 리더 프록시무스는 완전한 군림을 위해 인간들을 사냥하며 자신의 제국을 건설한다. 한편, 또 다른 유인원 노아는 우연히 숨겨진 과거의 이야기와 시저의 가르침을 듣게 되고 인간과 유인원이 함께 할 새로운 세상을 꿈꾼다. 어느 날 그의 앞에 나타난 의문의 한 인간 소녀. 노아는 그녀와 함께 자유를 향한 여정을 시작하게 되는데…', 145, '12', 'RELEASED', 351.639000, 7.111000, 397366385, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 653346 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 653346 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 653346 AND g.name = '액션';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '오웬 티그', '/tgCkGE0LIggyjMmgSwHhpZAkfJs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '오웬 티그');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Noa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '오웬 티그';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '프레이아 앨런', '/xq33JCqUjBzPz3drN48N2N7ySKI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '프레이아 앨런');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nova / Mae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '프레이아 앨런';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케빈 듀랜드', '/hINvryvce5tpod6kTnUg9ZTH8wg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케빈 듀랜드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Proximus Caesar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '케빈 듀랜드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '피터 메이컨', '/jF4jzgtWB2NAJ6BfVTSDQOlOHLr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '피터 메이컨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Raka', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '피터 메이컨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '윌리엄 H. 메이시', '/hdVEGSrP8qWlJnt0v5vSVcGOjy7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '윌리엄 H. 메이시');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trevathan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '윌리엄 H. 메이시';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '이카 다빌', '/7tNdST92WSTGHmEJbExaRlQHWcW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '이카 다빌');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sylva', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '이카 다빌';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '트래비스 제프리', '/picKz6F5ZNpZeDF1oRXHpSR8V8w.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '트래비스 제프리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anaya', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '트래비스 제프리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리디아 페컴', '/tcBJklZSsP2JuQIYataJHW3pJXE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리디아 페컴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soona', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '리디아 페컴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Neil Sandilands', '/t0tWl640swPEEBd5mY51Xtekvuo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Neil Sandilands');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Koro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Neil Sandilands';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ras-Samuel Welda''abzgi', '/pZhLFFEjzbg5fEl53TgagusDGp1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ras-Samuel Welda''abzgi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lightning', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Ras-Samuel Welda''abzgi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sara Wiseman', '/oZUbTYeLBywjNv6Ul1nZryFsffq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sara Wiseman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Sara Wiseman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kaden Hartcher', '/4SbhcfR8yKTII0PAcNZDxczXN38.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kaden Hartcher');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Oda / Rust', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Kaden Hartcher';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andy McPhee', '/uC0QWuaaOoIcLl6f5ebkFgTyF1r.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andy McPhee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Honored Elder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Andy McPhee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nina Gallas', '/ymN3Ng8gB32DwlbWdFQqsuJeC4m.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nina Gallas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Youngster #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Nina Gallas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samuel Falé', '/1aZqQhJEPP2FVdFgvOJ7CLyZ7IO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samuel Falé');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Youngster #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Samuel Falé';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '디천 래크먼', '/ySRHqthzU1gcEhV5rt7awZCzcwd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '디천 래크먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Korina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '디천 래크먼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Virginie Laverdure', '/ujTTbrapu2km7ApWOIoYZn7IybZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Virginie Laverdure');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lead Tech', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Virginie Laverdure';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Markus Hamilton', '/7AgC90kPSOZmUkBIFrCvrkXSL8G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Markus Hamilton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tech #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Markus Hamilton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Benjamin Scott', '/6EKEBeIrrW7C43TJkknJ7KpiM4l.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Benjamin Scott');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tech #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Benjamin Scott';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nirish Bhat Surambadka', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nirish Bhat Surambadka');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Youngster #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Nirish Bhat Surambadka';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Frances Berry', '/qCp0psD5qzguABpRxWmMuC04kcl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Frances Berry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Laika', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Frances Berry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peter Hayes', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peter Hayes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feral Human #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Peter Hayes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sheree da Costa', '/5Pat1cnT2sNeDBwNYx3iMg37dik.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sheree da Costa');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feral Human #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Sheree da Costa';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Souleymane Diasse', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Souleymane Diasse');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feral Human #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Souleymane Diasse';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olga Miller', '/luRnZ3knzWnoRzZAv5x3wH0MJpr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olga Miller');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feral Human #4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Olga Miller';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Дмитрий Миллер', '/wuQSGEO26fJkIKGKaIxwd9dPIRZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Дмитрий Миллер');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feral Human #5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Дмитрий Миллер';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anastasia Miller', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anastasia Miller');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feral Human #6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Anastasia Miller';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Spudic', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Spudic');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tech #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Michael Spudic';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케린 코너벌', '/5e8YyNQjWre2UbExYBlJ7zva934.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케린 코너벌');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maurice', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = '케린 코너벌';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Terry Notary', '/nYs1Sd11czZNwcDyUYdHPwHHIRO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Terry Notary');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rocket', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 653346 AND a.name = 'Terry Notary';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '웨스 볼', '/zVPXrhuAxYAWlwDEWCaqeUPycFx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '웨스 볼');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 653346 AND d.name = '웨스 볼';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/plNOSbqkSuGEK2i15A5btAXtB7t.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 653346;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/iHYh4cdO8ylA3W0dUxTDVdyJ5G9.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 653346;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1151949, '섀도우의 13', '2024-09-10', '', '살인 훈련을 받은 젊은 킬러가 무자비한 범죄 조직으로부터 한 소년을 구출하려 한다. 소년만 구할 수 있다면 멘토를 등지는 것은 물론, 그 길을 가로막는 누구라도 제거할 것이다.', 145, '19', 'RELEASED', 352.969000, 7.394000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1151949 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1151949 AND g.name = '범죄';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1151949 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aurora Ribero', '/oUK71SxqHVp3OXWptYNEnVsOlr5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aurora Ribero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agent 13 / Nomi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Aurora Ribero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hana Malasan', '/g6ETjwEnzgoYpwb7zurcxyGCRE3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hana Malasan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agent Umbra', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Hana Malasan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andri Mashadi', '/nKBg1kOv7ElDnI2pPrfRK1vLkSf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andri Mashadi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ariel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Andri Mashadi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adipati Dolken', '/p0RmTWjypOrRK613v763mpnQRiO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adipati Dolken');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Prasetyo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Adipati Dolken';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kristo Immanuel', '/xPaRIpL5PfiCB3qFPLOxHqzEKwf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kristo Immanuel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jeki', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Kristo Immanuel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ali Fikry', '/zDmUZT2LZi3RiA8SWx8dzklbVYw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ali Fikry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Monji', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Ali Fikry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Taskya Namya', '/wqHItPezsgFP2aLB0bvCI5CGn4P.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Taskya Namya');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soriah', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Taskya Namya';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Arswendy Bening Swara', '/fzC4pbmAIeqFqBMoAVa42vHV4vz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Arswendy Bening Swara');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soemitro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Arswendy Bening Swara';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chew Kin-Wah', '/f2qVWixj7XIBnBxV9gBwIfJJDop.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chew Kin-Wah');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Handler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Chew Kin-Wah';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Agra Piliang', '/mpkV8wMrO7ccRD0yy3Pw5K3Wu7V.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Agra Piliang');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Haga', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Agra Piliang';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Ekaputra', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Ekaputra');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agent Troika', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Daniel Ekaputra';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tanta Ginting', '/8Yo0Izp5RUEu1lzgHtjzr8XMzHf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tanta Ginting');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kabil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Tanta Ginting';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '야얀 루히안', '/k4UvBLu3KekD1tws0gLbzzkqREw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '야얀 루히안');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Master Burai', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = '야얀 루히안';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eva Celia', '/pQGDOn24fKHxNdOuIZMKhhKFixW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eva Celia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Volver', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Eva Celia';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mawar Eva De Jongh', '/e63JIifeTq5KpUa8FTcOVAofX7j.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mawar Eva De Jongh');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agent 14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Mawar Eva De Jongh';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hiroaki Kato', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hiroaki Kato');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kenjiro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Hiroaki Kato';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nobuyuki Suzuki', '/rqf7facAJUcooovqglUa9foaFID.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nobuyuki Suzuki');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yoshinori', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Nobuyuki Suzuki';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christie Naomi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christie Naomi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Geisha', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Christie Naomi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jesyca Marlein', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jesyca Marlein');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mirasti', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Jesyca Marlein';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Candace Gabriel Bianca', '/jKS9mHdavSP4mMvdZFT2TZ7qmWf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Candace Gabriel Bianca');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Nomi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Candace Gabriel Bianca';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Banon Gautama', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Banon Gautama');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kusno', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Banon Gautama';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Shanna Miaziza', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Shanna Miaziza');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mitro''s Assistant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Shanna Miaziza';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lukas Will', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lukas Will');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Yakuza', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Lukas Will';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anty Indah', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anty Indah');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Heroin Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Anty Indah';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Evi Fauziah', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Evi Fauziah');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ny. Sari Djamil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Evi Fauziah';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Diana Stephanie', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Diana Stephanie');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nomi''s Mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Diana Stephanie';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amara Lovegna', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amara Lovegna');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Red Room Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1151949 AND a.name = 'Amara Lovegna';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '티모 차얀토', '/gYBBoFnY4ualTvxwThF3FTLfzas.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '티모 차얀토');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1151949 AND d.name = '티모 차얀토';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/mLxunT78TAbvH8Gjv1hlmfIsECd.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1151949;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/wB8HiUiFWo1EsxrdvB6bsMNW81g.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1151949;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1100782, '스마일 2', '2024-10-16', '이번엔 너도 같이 웃게 될 거야', '월드투어를 앞두고 자신의 눈 앞에서 기괴한 미소와 함께 끔찍한 죽음을 맞은 친구를 목격한 팝스타 ‘스카이’. 그 날 이후 공연 리허설과 팬 미팅 행사 등 그녀의 삶 곳곳에서 끔찍한 일들이 잇따라 발생한다. 화려한 스타의 삶을 뒤덮은 공포에서 벗어나기 위해 몸부림치던 ‘스카이’는 자신이 죽어야만 전염처럼 번지는 저주가 끝난다는 사실을 듣게 되는데…', 128, '19', 'NOW_PLAYING', 342.346000, 6.887000, 123787540, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1100782 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1100782 AND g.name = '미스터리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '나오미 스콧', '/nNqqgP2yF1jkLZq9ndYcXOzTD2G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '나오미 스콧');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Skye Riley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = '나오미 스콧';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rosemarie DeWitt', '/44sxIdGtYN24R14OmnZbCpcd8J8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rosemarie DeWitt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elizabeth Riley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Rosemarie DeWitt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dylan Gelula', '/nqXd0gVNlma8knaykJh5ArXSYqy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dylan Gelula');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gemma', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Dylan Gelula';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루카스 게이지', '/j7Zub5J9PgCnsfgEC5QCr160JtH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루카스 게이지');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lewis Fregoli', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = '루카스 게이지';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '피터 제이컵슨', '/pGi9CnzEG4cLa2viUP89yvlPCyR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '피터 제이컵슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Morris', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = '피터 제이컵슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miles Gutierrez-Riley', '/22JmiXEKoIHTKAdZaxOiS5wVHnM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miles Gutierrez-Riley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joshua', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Miles Gutierrez-Riley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Raúl Castillo', '/mNGyFYRTbxjgUwsDKCdohm6o9g.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Raúl Castillo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Darius Bravo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Raúl Castillo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ray Nicholson', '/f0MRbGIyTEJLJgHedJS8pRFhGn4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ray Nicholson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paul Hudson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Ray Nicholson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jon Rua', '/4BNnQUaiHUYggtxMDsRFiM5JYZj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jon Rua');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anton', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Jon Rua';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '카일 갤너', '/wfdywrw6K3ti1uW1IYDWbUtU8se.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '카일 갤너');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = '카일 갤너';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Erika Chase', '/ifgOOlFs8uigZh2de5tLi3f9VZR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Erika Chase');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Erika Chase';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '드루 배리모어', '/9xMu2GLC5otUcC11sEWC5aEAERQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '드루 배리모어');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Self', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = '드루 배리모어';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mila Falkof', '/A8kPdDj4SXD9v7vkQUdQtROU9Zv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mila Falkof');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Smiling Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Mila Falkof';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daphne Zelle', '/s3tusiCyCyxdwfuLhDeI0Tg9pQy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daphne Zelle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hair Stylist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Daphne Zelle';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivan Carlo', '/xc7Xea6noUAAQK8OymkxFo8PGE6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivan Carlo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Alfredo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Ivan Carlo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Delphi Harrington', '/wqZgdI0SHDyTggl4o7EJKZIxxwL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Delphi Harrington');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbara Gallagher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Delphi Harrington';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Zebedee Row', '/rGbP0ix0Hnq4gn1OkMLSLFfHQrK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Zebedee Row');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Alexi aka Shaved Head', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Zebedee Row';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jon Seeber', '/pzbqJ3BIiDDwc9WJKD8riEDztA3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jon Seeber');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Concert Goer (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Jon Seeber';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '파커 핀', '/lw1I0voNLS2llYTlDgd6qZzAMZ6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '파커 핀');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Photographer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = '파커 핀';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlie Sarroff', '/clFCJbtqWCDzILqthH7eEhNJlix.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlie Sarroff');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Charlie Sarroff';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Trevor Newlin', '/quLkv08KxRXlAdApnpgmmtP73eQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Trevor Newlin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Monstrosity', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100782 AND a.name = 'Trevor Newlin';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '파커 핀', '/lw1I0voNLS2llYTlDgd6qZzAMZ6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '파커 핀');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1100782 AND d.name = '파커 핀';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/4nQk1OgbtdnKYMEQiOwwMB4yGxn.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1100782;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3rxoUVI74z7rTWYSAC2q3Uax2nC.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1100782;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (365177, '보더랜드', '2024-08-07', '', '베일에 쌓인 과거를 가진 악명 높은 현상금 사냥꾼 릴리스는 갑작스럽게 그녀의 고향인 은하계에서 가장 혼란스러운 행성 ''판도라''로 돌아간다. 그 내역은 우주에서 매우 강대한 권력을 지닌 아틀라스 회장의 잃어버린 딸을 찾기 위해서였다. 릴리스는 예상치 못한 나사빠진 연합을 만들었다. 임무를 위해 온 용병 롤랜드, 흉포한 10살 배기 폭파전문가 타이니 티나, 티나의 근육질 보디가드 크리그, 보이는 게 전부인 괴짜 과학자 태니스, 그리고 허풍쟁이 클랩트랩이 판도라의 가장 뜨거운 비밀을 파헤치기 위해 외계 종족과 위험천만한 도적떼와 맞짱을 떠야하는 우주의 운명이 그들 손에 달려 있지만 그보다 더한 것과 싸울 것이다. 보더랜드에 어서오세요.', 101, '', 'RELEASED', 384.863000, 5.862000, 30863794, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 365177 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 365177 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 365177 AND g.name = '코미디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케이트 블란쳇', '/vUuEHiAR0eD3XEJhg2DWIjymUAA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케이트 블란쳇');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lilith', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '케이트 블란쳇';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케빈 하트', '/byiNydUlM6oP8diA7WMvYbNM7a1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케빈 하트');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Roland', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '케빈 하트';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '에드가 라미레즈', '/o9xJcedad1BwpMcgDGtW5dVgzH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '에드가 라미레즈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Atlas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '에드가 라미레즈';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제이미 리 커티스', '/9KWvPVeiLOXlOGl0XVyHZtJWQtx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제이미 리 커티스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tannis', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '제이미 리 커티스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아리아나 그린블랫', '/3Y3Xk8jwE1Ju0zIn31zBMuD7Fkn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아리아나 그린블랫');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tiny Tina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '아리아나 그린블랫';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Florian Munteanu', '/lE26A169mjuwW5x0zx2wW9Q9o2w.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Florian Munteanu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krieg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Florian Munteanu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Janina Gavankar', '/3lj5jZFvjjc4XD6pdykMdgyPREp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Janina Gavankar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Knoxx', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Janina Gavankar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '잭 블랙', '/rtCx0fiYxJVhzXXdwZE2XRTfIKE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '잭 블랙');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Claptrap (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '잭 블랙';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Benjamin Byron Davis', '/5WHDh9l9Ylsbf5ZKt3nQ4FRweUi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Benjamin Byron Davis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marcus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Benjamin Byron Davis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olivier Richters', '/8Zz5WYE1Muc3AX9daxCxgNTRE5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olivier Richters');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Olivier Richters';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '지나 거숀', '/aMZdAg2lIBO01Z38jNpCsw5cUXZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '지나 거숀');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Moxxi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '지나 거숀';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ryann Redmond', '/sVJgLfdbCr4f0DWPe8wpwPeUvTH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ryann Redmond');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ellie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Ryann Redmond';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bobby Lee', '/90TyhVb7OfyHPmj3ZVX6hEjHGlD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bobby Lee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Larry', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Bobby Lee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sophie Popper', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sophie Popper');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Child', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Sophie Popper';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '헤일리 베넷', '/8HRgGypSwHeI27ffmcAELNoxIOw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '헤일리 베넷');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lilith''s Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = '헤일리 베넷';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Riana Emma Balla', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Riana Emma Balla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Lilith', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Riana Emma Balla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Boyer', '/3rt0I7SWke8YqSmtzySypnlR2vf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Boyer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Scooter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Steven Boyer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sámuel Siffel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sámuel Siffel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kid #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Sámuel Siffel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lana Borcván-Hobson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lana Borcván-Hobson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kid #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Lana Borcván-Hobson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emma Papp', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emma Papp');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kid #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Emma Papp';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Liliána Kaizer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Liliána Kaizer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kid #4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Liliána Kaizer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samuel Tamunotoku Gbobo', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samuel Tamunotoku Gbobo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krom''s Lance Soldier #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Samuel Tamunotoku Gbobo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Zsuzsanna Roehnelt', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Zsuzsanna Roehnelt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krom''s Lance Soldier #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Zsuzsanna Roehnelt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Deák Zsolt', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Deák Zsolt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stingray Gunner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Deák Zsolt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jeremy Wheeler', '/qysjgXM9zSuaoqT6JGKzbVqCqH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jeremy Wheeler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Citizen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Jeremy Wheeler';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Harry Szovik', '/zCj7D7T8mL2eXwozKerAvSDiG99.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Harry Szovik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crimson Lance Soldier #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Harry Szovik';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adam Zambryzcki', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adam Zambryzcki');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Another Lance Soldier', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Adam Zambryzcki';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Zsófia Bujáki', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Zsófia Bujáki');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crimson Lance Soldier #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Zsófia Bujáki';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Iliasz Shweirif', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iliasz Shweirif');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crimson Lance Soldier #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Iliasz Shweirif';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Attila Herman', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Attila Herman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Vulture', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Attila Herman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hunter Troy Rothwell', '/rpvCF8Is9sehNtVurYVbr0j3Ers.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hunter Troy Rothwell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pickle', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Hunter Troy Rothwell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paula Andrea Placido', '/zVdSpxrWAUYrSY4BXcvw3FlcNzr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paula Andrea Placido');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Paula Andrea Placido';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Harry M. Ford', '/jgsqioqOaki7cBsFg2MevzKTGsu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Harry M. Ford');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Middle Man / Jake', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Harry M. Ford';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Benjamin Hoffman', '/1qJ7QCRhgZMDS28yL1hCcm8kiJR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Benjamin Hoffman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thug', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 365177 AND a.name = 'Benjamin Hoffman';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '일라이 로스', '/qQTkpxzh1FlBGL1HD5hzdUMxv49.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '일라이 로스');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 365177 AND d.name = '일라이 로스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3NPUQ6Ywayb5ES2IP1HWrDRt1Gc.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 365177;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/mKOBdgaEFguADkJhfFslY7TYxIh.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 365177;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (157336, '인터스텔라', '2014-11-05', '우린 답을 찾을 것이다, 늘 그랬듯이', '세계 각국의 정부와 경제가 완전히 붕괴된 미래가 다가온다. 지난 20세기에 범한 잘못이 전 세계적인 식량 부족을 불러왔고, NASA도 해체되었다. 나사 소속 우주비행사였던 쿠퍼는 지구에 몰아친 식량난으로 옥수수나 키우며 살고 있다. 거센 황사가 몰아친 어느 날 알 수 없는 힘에 이끌려 딸과 함께 도착한 곳은 인류가 이주할 행성을 찾는 나사의 비밀본부. 이 때 시공간에 불가사의한 틈이 열리고, 이 곳을 탐험해 인류를 구해야 하는 임무를 위해 쿠퍼는 만류하는 딸을 뒤로한 채 우주선에 탑승하는데...', 169, '12', 'RELEASED', 247.217000, 8.441000, 701729206, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 157336 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 157336 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 157336 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '매튜 매커너히', '/rUxLWWCDUF8RnDaocSqrVDJ2MS1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '매튜 매커너히');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cooper', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '매튜 매커너히';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앤 해서웨이', '/kRYxBuUtN3vNz5pLfqCf32ZYlw2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앤 해서웨이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brand', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '앤 해서웨이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마이클 케인', '/bVZRMlpjTAO2pJK6v90buFgVbSW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마이클 케인');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Professor Brand', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '마이클 케인';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제시카 차스테인', '/xRvRzxiiHhgUErl0yf9w8WariRE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제시카 차스테인');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Murph', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '제시카 차스테인';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케이시 애플렉', '/vD5MtCjHPHpmU9XNn74EPGMHT7o.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케이시 애플렉');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '케이시 애플렉';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '웨스 벤틀리', '/voD93lzFZrr9xfAggwFcPRBi84i.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '웨스 벤틀리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doyle', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '웨스 벤틀리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '토퍼 그레이스', '/pXaSwE0StHM0lhJ06y45xYlEfhG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '토퍼 그레이스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Getty', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '토퍼 그레이스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '맥켄지 포이', '/6n8yZKJ3YHkm4Ds3zNjJpankHUk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '맥켄지 포이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Murph (10 Yrs.)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '맥켄지 포이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앨런 버스틴', '/rDClU5Mvj6SrDxAdZMGPDgGUBiw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앨런 버스틴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Murph (older)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '앨런 버스틴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '존 리스고', '/8Y1sjBdnVR483S8PrnAQzlESwhx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 리스고');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Donald', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '존 리스고';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '빌 어윈', '/bAV5qsljgiHQkn3QluB5clVYC13.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '빌 어윈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TARS (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '빌 어윈';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이빗 기아시', '/4Kj6BI2Ki6tpAVzc4S6lh1Xzua3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이빗 기아시');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Romilly', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '데이빗 기아시';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '티모시 샬라메', '/BE2sdjpgsa2rNTFa66f7upkaOP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '티모시 샬라메');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom (15 Yrs.)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '티모시 샬라메';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '맷 데이먼', '/4KAxONjmVq7qcItdXo38SYtnpul.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '맷 데이먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mann', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '맷 데이먼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조쉬 스튜어트', '/prgoT9fq5Z2ZCGmC1rrSZkq4wH9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조쉬 스튜어트');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'CASE (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '조쉬 스튜어트';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레아 케언스', '/pdPcPWuPcheSRPwJFmnMI66XTn5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레아 케언스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lois', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '레아 케언스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리암 디킨슨', '/4qXWvTQ2dC4369FnV4Ac2JoYk3p.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리암 디킨슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Coop', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '리암 디킨슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '프란시스 X. 맥카티', '/4DyZhRmxGrwhr2UNc1CTZHdvZ0R.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '프란시스 X. 맥카티');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Boots', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '프란시스 X. 맥카티';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '윌리엄 디베인', '/opWtw9Or6cIWor0VIUdjB5Ujowq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '윌리엄 디베인');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Williams', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '윌리엄 디베인';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앤드류 보바', '/nCrQGvvugig0vfOCgnmFkMKvTOL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앤드류 보바');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Smith', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '앤드류 보바';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '엘예스 가벨', '/z9IqYTYxhVR9ADxaksbPQwiYQns.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '엘예스 가벨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Administrator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '엘예스 가벨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이빗 오예로워', '/7UZHRwOKe2cYxj8SeNUklyPYkns.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이빗 오예로워');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'School Principal', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '데이빗 오예로워';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '콜렛 울프', '/cyX7HFrY1YYgXXrveGlaFGAAmKn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '콜렛 울프');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ms. Hanley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '콜렛 울프';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제프 헤프너', '/qlIzEnBEuLT9ofE1PCGKKHHGga2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제프 헤프너');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '제프 헤프너';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '러스 페가', '/d0W7kq97Ul8Iz5LZIVNDKxSly8M.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '러스 페가');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crew Chief', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '러스 페가';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레나 제오가스', '/hdKb1VvkvFgUpFa3moaiBH3bcPy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레나 제오가스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nurse Practitioner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '레나 제오가스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '브룩 스미스', '/zD6SyVPGnrtnHvC0QtucEDxDTk5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '브룩 스미스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nurse', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '브룩 스미스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '플로라 놀란', '/XYjrBJUmEFsb5IOTlnV2XeDpxz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '플로라 놀란');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Girl on Truck', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '플로라 놀란';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '그리픈 프레이저', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '그리픈 프레이저');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Boy on Truck', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '그리픈 프레이저';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스티안 반 더 헤이든', '/59HMcKb4BiO5gI52LPmpYZTkpw3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스티안 반 더 헤이든');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Scientist (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '크리스티안 반 더 헤이든';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '윌리엄 패트릭 브라운', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '윌리엄 패트릭 브라운');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'NASA Employee (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '윌리엄 패트릭 브라운';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '벤자민 하디', '/8YqP4KmOi3DSKuNe0eTiSmHHCH4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '벤자민 하디');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'NASA Scientist (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '벤자민 하디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조셉 올리베이라', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조셉 올리베이라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Astronaut (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '조셉 올리베이라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '알렉산더 미카엘 헬리섹', '/nxf8iwz1ODRQMcTbZE86amTTTG5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '알렉산더 미카엘 헬리섹');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Construction Boss (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '알렉산더 미카엘 헬리섹';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '라이언 어빙', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '라이언 어빙');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Popcorn Seller (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 157336 AND a.name = '라이언 어빙';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '크리스토퍼 놀란', '/xuAIuYSmsUzKlUMBFGVZaWsY3DZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '크리스토퍼 놀란');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 157336 AND d.name = '크리스토퍼 놀란';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/evoEi8SBSvIIEveM3V6nCJ6vKj8.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 157336;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/xJHokMbljvjADYdit5fK5VQsXEG.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 157336;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (592695, '플레저', '2021-10-08', '', '벨라 체리는 포르노 영화 배우의 꿈을 안고 로스앤젤레스에 도착하지만,  그녀는 그녀의 야망과 교활함을 활용하여 이 매혹적이고 독특한 세계의  정상에 오르기 위해 노력하지만 그런 명성이 쉽게 오지 않는다는 것을 곧 알게 된다.', 108, '', 'RELEASED', 334.031000, 6.221000, 393824, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 592695 AND g.name = '드라마';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sofia Kappel', '/y2yMZ37bM9b4oYcsrZFnPpeun4G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sofia Kappel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bella Cherry', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Sofia Kappel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Zelda Morrison', '/8suRdN1ds2iJTPJnLUfoy98CbPa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Zelda Morrison');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Zelda Morrison';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tee Reel', '/lYnzxsQMdj0CJWA4KuGtqhvo3aP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tee Reel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mike', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Tee Reel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Evelyn Claire', '/gJWQ1gfCrjGdI9ZFMgSOD1ElPwS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Evelyn Claire');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ava', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Evelyn Claire';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chris Cock', '/7ZQURgnph71tP4cD3UvWSpAyoTA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chris Cock');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bear', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Chris Cock';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dana DeArmond', '/wITtaUtkOKvTVjBMNRomPMdjX74.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dana DeArmond');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ashley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Dana DeArmond';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kendra Spade', '/roQHjEitd8nWWjAPNOHeO2tn7JJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kendra Spade');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kimberly', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Kendra Spade';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mark Spiegler', '/b7Fc9f9z2iEQnhOEEDf5VuaiIiw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mark Spiegler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Spiegler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Mark Spiegler';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eva Melander', '/r4MHAB7yvlKNHLYTSdwYnlzUIOq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eva Melander');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mother (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Eva Melander';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lucy Hart', '/5NdrYKZGbh0URR7YGzGrJkP6DtA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lucy Hart');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Caesar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Lucy Hart';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John Strong', '/cPn2G6WF20I6IqNOcBRCC6Vx9Xm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Strong');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'John Strong';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ryan McLane', '/it1oM0MPpzmd0Lsd5WlD7ZOSJDt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ryan McLane');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zander', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Ryan McLane';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Axel Braun', '/ld7B9vM9rJ4X5d40kHeuEVrL3Ih.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Axel Braun');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Axel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Axel Braun';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlotte Cross', '/h5vQz6admJszcXVd4u4SsRP3GIr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlotte Cross');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Abella', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Charlotte Cross';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Xander Corvus', '/8JVCcHHVTaGsxF3XCR8Kmt1IODa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Xander Corvus');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Keith', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Xander Corvus';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivy Sherwood', '/iFrn9R8u55QhTPOglYSIr67dCrk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivy Sherwood');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Funny Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Ivy Sherwood';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kasia Szarek', '/cMN23pOoH37YNYPYezmSk96lsep.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kasia Szarek');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sophia - Make-up Girl #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Kasia Szarek';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chanel Preston', '/thYGgaUarq7rUGYeNiExoLEfMr0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chanel Preston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chanel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Chanel Preston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Casey Calvert', '/wwVjVX2Wer35rOVqC9L5cG1HJ3m.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Casey Calvert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Casey', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Casey Calvert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aiden Starr', '/5NgRJeDsUTaxfdA7c3ocQtWYP6C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aiden Starr');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Aiden Starr', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Aiden Starr';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mick Blue', '/rUrBxRV2uCXPbFIo4mVnOMo7Bnv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mick Blue');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jules', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Mick Blue';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jack Blaque', '/dMkOYluvztxeg2cG26imXP91xLh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jack Blaque');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jason', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Jack Blaque';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nathan Bronson', '/wWbUiHSgvZ9J3nZBdWwjxD3TXSy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nathan Bronson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Nathan Bronson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bill Bailey', '/geePxJVVW7n6j2LDOXl3Q0e7DLW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bill Bailey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Adam', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Bill Bailey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steve Holmes', '/hj3N1sbk7U1YAhZGsrgoevp2rDw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steve Holmes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Christian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Steve Holmes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Juliette March', '/lCh81tUCpYXsJgaM6kuhq88bd8j.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Juliette March');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juliette', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Juliette March';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Abella Danger', '/lmty9GJ6ykeqnyg1aGXkb3wkrOR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Abella Danger');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Abella Danger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Abella Danger';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gina Valentina', '/x4xTI3nym4cfuRwk5jaV7K2QTLl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gina Valentina');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gina Valentina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Gina Valentina';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maja Kin', '/9Xrj1lYbbdYSRLIIpFjRUoIZ9FV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maja Kin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nora Moore, Spiegler Girl (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Maja Kin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Reza Azar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Reza Azar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joe', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Reza Azar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Small Hands', '/iLGou3ei40w9CHT4mI25T0lewRw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Small Hands');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dex', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Small Hands';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Derrick Pierce', '/d4BUS7c1ztnAES5OoF0y3UtgtXK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Derrick Pierce');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chris', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Derrick Pierce';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tommy Pistol', '/nlcMI2XQutk6BIaZMIdSEs2idmd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tommy Pistol');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mike (director)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Tommy Pistol';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Claudio Bergamin', '/4uc89oQVZS0jAae4ThbKkHHs0of.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Claudio Bergamin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Claudio', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Claudio Bergamin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alice Grey', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alice Grey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Aliah', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Alice Grey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marc Kramer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marc Kramer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Axel''s PM', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Marc Kramer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peter Warren', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peter Warren');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Peter / Ray', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Peter Warren';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eric John Grossbeck', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eric John Grossbeck');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Porn Actor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Eric John Grossbeck';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yoshi Nurijumi', '/lLpMLwoOfEUNBIW7rYkm0hKqTVp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yoshi Nurijumi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Security Guard / End Party', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Yoshi Nurijumi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cammy Darling', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cammy Darling');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Makeup Girl #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Cammy Darling';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Freeman', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Freeman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Photographer #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'David Freeman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jay Allan', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jay Allan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Photographer #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Jay Allan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anthony Elias Contreras', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anthony Elias Contreras');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ICE Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Anthony Elias Contreras';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Victor Siegel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Victor Siegel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Porn Cameraman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Victor Siegel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Thompson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Thompson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Roger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Michael Thompson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Devin McGee', '/9IQDr7P4IEClsgMnUEJhsmJyS7S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Devin McGee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Devin McGee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kelvin Batiste Jr.', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kelvin Batiste Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Technician #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Kelvin Batiste Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ex Libris', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ex Libris');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rigger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Ex Libris';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mana Afshar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mana Afshar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bathroom Girl #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Mana Afshar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Danielle Alexandria', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Danielle Alexandria');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bathroom Girl #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Danielle Alexandria';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rusty Nails', '/bRZXtaLXv77C5S8B9orCT2SpVAj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rusty Nails');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crew Member', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Rusty Nails';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ken Melvoin-Berg', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ken Melvoin-Berg');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crew Member #2 / BBG Shoot / Bill', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Ken Melvoin-Berg';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sean Stearley', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sean Stearley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crew Member #3 - BGG Shoot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Sean Stearley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ruckus', '/mqk0daU2qEpxEzOxg6ULlyrwsAr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ruckus');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ruckus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Ruckus';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Timi Mason', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Timi Mason');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Staff', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Timi Mason';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jules Jordan', '/qe2eEs06eqIEH98v0ZDLJqClbn0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jules Jordan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jules Jordan (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Jules Jordan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pryde Pierce', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pryde Pierce');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'VIP Partygoer (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Pryde Pierce';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Parker Stuart', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Parker Stuart');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'David (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Parker Stuart';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ester Uddén', '/2nxBdc6x3jV7Tjh4eVPd7ZZ2XCI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ester Uddén');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Spiegler Girl (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Ester Uddén';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason Toler', '/6AFz5qtRBVIZGYF3lpM8fIScbr5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason Toler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mike', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 592695 AND a.name = 'Jason Toler';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Ninja Thyberg', '/9uY75TQt9lX3mK9v3eAmChFUxaC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Ninja Thyberg');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 592695 AND d.name = 'Ninja Thyberg';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/t3SEI2YI81oO3nEgjJ9jMAIKApY.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 592695;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/5tqkP8NNWdteskVBYPRXE6h82ts.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 592695;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1241982, '모아나 2', '2024-11-27', '바다 저 너머 새로운 항해가 시작된다!', '바다를 누볐던 선조들에게서 예기치 못한 부름을 받은 모아나가 마우이와 다시 만나 새로운 선원들과 함께 오랫동안 잊혀진 멀고 위험한 바다 너머로 떠나는 특별한 모험을 담은 이야기', 100, '', 'UPCOMING', 335.704000, 0.000000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1241982 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1241982 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1241982 AND g.name = '가족';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1241982 AND g.name = '코미디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아울리이 크러발리오', '/vEroqcnM2g6yY7qXDAie7hx2Cyp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아울리이 크러발리오');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Moana (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = '아울리이 크러발리오';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '드웨인 존슨', '/5QApZVV8FUFlVxQpIK3Ew6cqotq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '드웨인 존슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maui (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = '드웨인 존슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앨런 튜딕', '/jUuUbPuMGonFT5E2pcs4alfqaCN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앨런 튜딕');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hei Hei (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = '앨런 튜딕';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레이철 하우스', '/m8D9XlTGfI0ZmauMKtYp5tw8eNi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레이철 하우스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gramma Tala (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = '레이철 하우스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '테무에라 모리슨', '/1ckHDFgKXJ8pazmvLCW7DeOKqA0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '테무에라 모리슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chief Tui (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = '테무에라 모리슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '니콜 셰르징거', '/sB6TNkTdLCkK6DVd5NlBPtfssyD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '니콜 셰르징거');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sina (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = '니콜 셰르징거';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hualālai Chung', '/x2g5fdHqETY9dZgL4aB0QDP0boR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hualālai Chung');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Moni (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = 'Hualālai Chung';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Fane', '/tcozyaTgAa8rRmzc5qeht0loni6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Fane');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kele (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = 'David Fane';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rose Matafeo', '/zQa39fMjbOTIsovbh1TBTJVlToz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rose Matafeo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Loto (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = 'Rose Matafeo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Awhimai Fraser', '/276OUDPl2iIsz772HQw3tiz2JN2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Awhimai Fraser');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Matangi (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = 'Awhimai Fraser';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gerald Ramsey', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gerald Ramsey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tautai Vasa (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = 'Gerald Ramsey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Khaleesi Lambert-Tsuda', '/3LHXDjy9UijbtR7X2EReX5H57kk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Khaleesi Lambert-Tsuda');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Simea (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1241982 AND a.name = 'Khaleesi Lambert-Tsuda';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'David G. Derrick Jr.', '/j5JOtRua5KduoPsQVix0rwY3jOo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'David G. Derrick Jr.');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1241982 AND d.name = 'David G. Derrick Jr.';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Jason Hand', '/gepbkgavGdDXdNbQzdFaxayTpoH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Jason Hand');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1241982 AND d.name = 'Jason Hand';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Dana Ledoux Miller', '/wKqVtkgOv6iMcv1P0YPxV7UtQS9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Dana Ledoux Miller');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1241982 AND d.name = 'Dana Ledoux Miller';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/2WVvPcVRqfjyVzIUVIcszGb6zT4.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1241982;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/tElnmtQ6yz1PjN1kePNl8yMSb59.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1241982;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1010581, '나의 잘못', '2023-06-08', '', '노아는 남자 친구와 친구들이 있는 동네를 뒤로하고 엄마의 새 부자 남편 저택으로 이사를 가게 된다. 의붓오빠 닉과는 첫 만남부터 삐걱댔지만 곧 서로에게 이끌려 금지된 관계를 맺는다. 반항심과 고뇌로 가득 찬 그들의 인생은 송두리째 흔들리고 둘은 결국 뜨거운 사랑에 빠진다.', 117, '', 'RELEASED', 379.981000, 7.919000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1010581 AND g.name = '로맨스';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1010581 AND g.name = '드라마';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '니콜 월리스', '/xlvq6OYCN6yQef4fpJQtwVyQxqr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '니콜 월리스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Noah Morgan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = '니콜 월리스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '가브리엘 게바라', '/pviRYKEEmoPUfLYwP1VHJ6LQcRg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '가브리엘 게바라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nick Leister', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = '가브리엘 게바라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marta Hazas', '/1dbeTFRCbWBt70dIGjYHKVLnpaG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marta Hazas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rafaela', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Marta Hazas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Iván Sánchez', '/woVz8D7t1VUKjFJnsTAdc8tyz5C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iván Sánchez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'William Leister', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Iván Sánchez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eva Ruiz', '/bcu0nmQvhxwTzh4csc4kuxJsQee.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eva Ruiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jenna', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Eva Ruiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Víctor Varona', '/lcwFAjHjhJXkxf59TXGSjGGOlLj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Víctor Varona');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lion', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Víctor Varona';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fran Berenguer', '/uYi3MOwqtNdfZt82DdvzKCZku50.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fran Berenguer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ronnie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Fran Berenguer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adriana Ubani', '/7TlpwffkqeTu1mQNZW3OG0IdTFm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adriana Ubani');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anna', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Adriana Ubani';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivan Massagué', '/dmnJo2sGlfFjtKb8FDPlNjRhfyc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivan Massagué');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jonas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Ivan Massagué';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mariano Venancio', '/aZT4jP35s7hwOspb4nW1wqKZpmE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mariano Venancio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Martin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Mariano Venancio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jaime Ordóñez', '/oORmDftKZFr27jNaZ1XKcVY3eR8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jaime Ordóñez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chofer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Jaime Ordóñez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jaime Gutiérrez', '/v16hDXL23WV08T93SN7WdlAPLew.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jaime Gutiérrez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Leonardo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Jaime Gutiérrez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anastasia Russo', '/8RQi40pI2ddocE8S3GbXnpUKZ9S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anastasia Russo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Noah Nina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Anastasia Russo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Noah Casas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Noah Casas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maggie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Noah Casas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Martínez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Martínez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cruz', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Daniel Martínez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pablo Riguero', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pablo Riguero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Pablo Riguero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eve Ryan', '/lqNMF1KmRt2R76GBblGH1mxum8P.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eve Ryan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Betty', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Eve Ryan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lucas Nabor', '/xaJPHVub2M4Qk3y4j3oGaIvPmcZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lucas Nabor');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mario', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Lucas Nabor';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Antonio Hernández Fimia', '/u2jjeMbQthFMVPH6ozbPWiGsAph.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Antonio Hernández Fimia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mikel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Antonio Hernández Fimia';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paloma Catalán', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paloma Catalán');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Petra', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Paloma Catalán';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rocío Peláez', '/8k2CKcjr8IPGHcjOmkLaIj8VCGr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rocío Peláez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Inspectora', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Rocío Peláez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jon Rod', '/2ZJW1ccmffZqFnuKQhhVSc3Qex.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jon Rod');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Policia 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Jon Rod';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mariano Andres', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mariano Andres');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Policia 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Mariano Andres';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jonatan Ruiz', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonatan Ruiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tipo Bebida Fiesta', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Jonatan Ruiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mónica Caballero', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mónica Caballero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctora Maggie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Mónica Caballero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Álvaro Navarro', '/AjJpZZPILRW7tEpVcmPmdeMQ18Y.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Álvaro Navarro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maitre', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1010581 AND a.name = 'Álvaro Navarro';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Domingo González', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Domingo González');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1010581 AND d.name = 'Domingo González';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/duT8Vks5FXwDkpxoR84xb2a6VB6.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1010581;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/lntyt4OVDbcxA1l7LtwITbrD3FI.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1010581;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1140648, '더블 블라인드', '2024-02-09', '잠들면 죽는다!', '이중맹검 임상시험에 참여한 클레어는 다른 참가자들과 함께 통신이 터지지 않는 시설에서 지내게 된다. 정량대로 약을 복용하면서 경과를 지켜보던 참가자들은 순탄할 거라는 버크 박사의 말과는 달리 밤에 잠을 이루지 못하고, 제약사는 참가자들에게 거액의 돈을 제안하며 임상시험의 조건을 변경하는데...', 90, '', 'RELEASED', 329.510000, 5.800000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1140648 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1140648 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1140648 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Millie Brady', '/8IBIRaUl4QyttlieUfKVBR2Ia5J.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Millie Brady');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Claire', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Millie Brady';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '폴리애너 매킨토시', '/n9jfF6pEutTz6qeofHFz2mxh95e.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '폴리애너 매킨토시');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Burke', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = '폴리애너 매킨토시';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Akshay Kumar', '/ynbrjFIC9jRKUL2xw4G3HvvFSIH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Akshay Kumar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Amir', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Akshay Kumar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Diarmuid Noyes', '/saynEGgbzlYOyzFaEKfNhvBLKbA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Diarmuid Noyes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ray', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Diarmuid Noyes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brenock O''Connor', '/n32zOLtJ1BP8UnCEkZfaGLsdp6L.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brenock O''Connor');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paul', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Brenock O''Connor';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Abby Fitz', '/dsIijvByEZr81YGzY7VazWoGheD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Abby Fitz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Alison', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Abby Fitz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Shonagh Marie', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Shonagh Marie');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vanessa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Shonagh Marie';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Frank Blake', '/vapsLZpKx7Y2gPt3XQNRswJZfc5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Frank Blake');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marcus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Frank Blake';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kate Ashfield', '/rtuYpo9W4AsCvI1I6brIdHe7qi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kate Ashfield');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Helen Brady', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Kate Ashfield';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '에이미 드 브런', '/cN5ep9TcNHmJcK6uO0wMUtvgIOx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '에이미 드 브런');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'News Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = '에이미 드 브런';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Janet Grene', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Janet Grene');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nurse', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Janet Grene';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Håkon Karoliussen', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Håkon Karoliussen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Head of Division', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Håkon Karoliussen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Caoilfhionn McDonnell', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Caoilfhionn McDonnell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Senior Director', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Caoilfhionn McDonnell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Luca Pierucci', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Luca Pierucci');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Executive Vice President', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Luca Pierucci';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eon Grey', '/xt7ZzzlklLq7UVENY3sclAoT43N.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eon Grey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Head of Research', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1140648 AND a.name = 'Eon Grey';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Ian Hunt Duffy', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Ian Hunt Duffy');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1140648 AND d.name = 'Ian Hunt Duffy';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/5U4wqXmRf2FbwS0NMDlArDr7xq2.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1140648;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/pcjWAV4Iw7sl3dpV1dfIoxbbTuu.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1140648;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1328814, 'Amityville: Where the Echo Lives', '2024-10-28', '', '', 89, '', 'RELEASED', 473.641000, 5.100000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1328814 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1328814 AND g.name = '미스터리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sarah McDonald', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sarah McDonald');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Heather West', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Sarah McDonald';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Breanna Rossi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Breanna Rossi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mary Gonzalez', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Breanna Rossi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adela Perez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adela Perez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Adela Perez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nicholas J. Barelli', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nicholas J. Barelli');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'John Madison', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Nicholas J. Barelli';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hector De Alva', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hector De Alva');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Hector De Alva';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eugenia Preciado', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eugenia Preciado');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Eugenia Preciado';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adelina Topleva', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adelina Topleva');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Adelina Topleva';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olya Marynets', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olya Marynets');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Olya Marynets';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Simona Curkoska', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Simona Curkoska');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1328814 AND a.name = 'Simona Curkoska';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Carlos Ayala', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Carlos Ayala');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1328814 AND d.name = 'Carlos Ayala';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/jqhAgE9ceTX8f9xTcqBlmXSuMG3.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1328814;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/5VYqB2T9L0WetvN9Bxk3Wg4vKoJ.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1328814;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (86328, '테리파이어', '2011-08-09', '', '', 19, '', 'RELEASED', 268.714000, 6.300000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 86328 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marie Maser', '/iFLTBR6mC32zjSsTruT7m7aLCqo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marie Maser');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 86328 AND a.name = 'Marie Maser';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mike Giannelli', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mike Giannelli');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Art the Clown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 86328 AND a.name = 'Mike Giannelli';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Chmiel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Chmiel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Attendant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 86328 AND a.name = 'Michael Chmiel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Rodas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Rodas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man in Car', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 86328 AND a.name = 'Daniel Rodas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jennifer Castellano', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jennifer Castellano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mutilated Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 86328 AND a.name = 'Jennifer Castellano';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gary LoSavio', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gary LoSavio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Talk Radio Host / Nick', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 86328 AND a.name = 'Gary LoSavio';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Damien Leone', '/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Damien Leone');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 86328 AND d.name = 'Damien Leone';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/uP5k78WkCVrxrFp4AJflHbC61Ao.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 86328;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/1U7EVGj7Noc26owNOreCTKn59Bd.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 86328;

