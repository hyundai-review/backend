INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (912649, '베놈: 라스트 댄스', '2024-10-22', '죽음이 갈라놓을 때까지', '환상의 케미스트리의 에디 브록과 그의 심비오트 베놈은 그들을 노리는 정체불명 존재의 추격을 피해 같이 도망을 다니게 된다. 한편 베놈의 창조자 널은 고향 행성에서부터 그들을 찾아내기 위해 지구를 침략하고 에디와 베놈은 그동안 겪어보지 못한 최악의 위기를 맞이하게 되는데…', 109, '15', 'NOW_PLAYING', 4533.723000, 6.396000, 394000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 912649 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 912649 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 912649 AND g.name = '모험';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '톰 하디', '/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 하디');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie Brock / Venom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '톰 하디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '추이텔 에지오포', '/kq5DDnqqofoRI0t6ddtRlsJnNPT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '추이텔 에지오포');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'General Rex Strickland', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '추이텔 에지오포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '주노 템플', '/wMpZcKp7zaHnmNQooqbve33577Q.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '주노 템플');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Teddy Paine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '주노 템플';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Clark Backo', '/d24KKFxfoql6PBsBPsejFgzhSlH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clark Backo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sadie Christmas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Clark Backo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리스 에반스', '/1D670EEsbky3EtO7XLG32A09p92.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리스 에반스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Martin Moon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '리스 에반스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티븐 그레이엄', '/hRq4Rq8IbLL4nGCu11N5ePESdI6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티븐 그레이엄');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Detective Mulligan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '스티븐 그레이엄';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peggy Lu', '/ng5eaDcOf9kSwIYGNmwF9wEfIHp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peggy Lu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Chen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Peggy Lu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alanna Ubach', '/ffyBAEoW3bDgVJQV3GaHsZ9x29W.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alanna Ubach');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nova Moon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Alanna Ubach';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hala Finley', '/cVLLrES860YANUMzJUo20HUR7TI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hala Finley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Echo Moon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Hala Finley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '达什·麦克劳德', '/8WmRoUrM5S7rA0TVSdKGOSh9uq8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '达什·麦克劳德');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Leaf Moon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '达什·麦克劳德';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cristo Fernández', '/irx5BVVLSQWY9m5NrhqyxPekwIY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cristo Fernández');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Cristo Fernández';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앤디 서키스', '/eNGqhebQ4cDssjVeNFrKtUvweV5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앤디 서키스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Knull (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '앤디 서키스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jared Abrahamson', '/3hShByAdCj1Qom9mXeeqJL9zu8d.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jared Abrahamson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Forrest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Jared Abrahamson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivo Nandi', '/mQ3G9nLCLtfcMDEm4Is9zVzwapE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivo Nandi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Javier', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Ivo Nandi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jack Brady', '/4FD8dFS9usyl4Gv5qha1AbrXNjO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jack Brady');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jim - Security', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Jack Brady';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brooke Carter', '/tsfpEWWuLi0agOInxy43Oxi5cyr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brooke Carter');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Teddy Paine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Brooke Carter';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fflyn Edwards', '/lyCBy56im2St8sJXDAFogfrt3XF.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fflyn Edwards');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thaddeus Paine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Fflyn Edwards';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리드 스콧', '/kBAeDUDA7XJRXFLGNALlpE5d3lA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리드 스콧');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Dan Lewis', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '리드 스콧';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jake Allyn', '/kfS0frsBQT7CtMxRxI2zfvBwTWV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jake Allyn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Las Vegas Security Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Jake Allyn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Otis Winston', '/sLiGyvLoPmdfaBLM2jyyt8YYcik.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Otis Winston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Donald the Security Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Otis Winston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jacob Tomuri', '/f0jPDz0beDrLsmXWAnfXZqwHqFO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jacob Tomuri');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tuxedo Guy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Jacob Tomuri';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elijah Isaiah Cook', '/gfDhACaR28m16GV5aM8csVHMzoO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elijah Isaiah Cook');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Area 51 Soldier', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Elijah Isaiah Cook';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Norma Butikofer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Norma Butikofer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Woman on Plane', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Norma Butikofer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elizabeth Cook', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elizabeth Cook');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Keli Reule', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Elizabeth Cook';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Annie Hsu', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Annie Hsu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Army Medic', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Annie Hsu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Angie Hsu', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Angie Hsu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Army Medic', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Angie Hsu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martin McDougall', '/sqosciocBl1OgQmnBXjSOafDvpt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martin McDougall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The General', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Martin McDougall';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Narendra Khandwe', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Narendra Khandwe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Person In Plane', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Narendra Khandwe';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Kelly Marcel', '/thpdVW7O1975GcA3eNs1H8UIlmd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Kelly Marcel');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 912649 AND d.name = 'Kelly Marcel';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3flIDcZF3tnR7m5OU2h7lLPQwmr.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 912649;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 912649;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1034541, '테리파이어 3', '2024-10-09', '', '"아트 더 클라운"이 크리스마스 이브에 평화롭게 잠든 "마일스 카운티"의 주민들을 향해 혼돈을 일으키려 한다', 125, '', 'RELEASED', 3304.003000, 6.935000, 78573405, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1034541 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1034541 AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1034541 AND g.name = '미스터리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '로렌 라베라', '/qJYWq2oZcvHh7lnGskxkrYXCom0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로렌 라베라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sienna Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = '로렌 라베라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elliott Fullam', '/dNsFLihmWfA2KCENbZCtq9AjSob.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elliott Fullam');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jonathan Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Elliott Fullam';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이비드 하워드 손턴', '/9nYijs4ACzjg93zKezLiLmuRGvp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이비드 하워드 손턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Art the Clown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = '데이비드 하워드 손턴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Scaffidi', '/jwd0XXuc4ibXAXjOxmhsFP0fQEO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Scaffidi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria Heyes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Samantha Scaffidi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Margaret Anne Florence', '/c2EqBueLCrn6XEnmfutylUd1icl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Margaret Anne Florence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jessica', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Margaret Anne Florence';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bryce Johnson', '/iyHjMvKijZZDVZkK681JAio4nAh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bryce Johnson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Bryce Johnson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexa Blair Robertson', '/zwTs9vDLKtvtxZztiH6gYUfK5MC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexa Blair Robertson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Alexa Blair Robertson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Antonella Rose', '/sdqM1qQEjRuo460AuUOjFAH7kCm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Antonella Rose');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gabby', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Antonella Rose';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mason Mecartea', '/jkbpjqRFBmAaGILnDiqpnPj0qty.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mason Mecartea');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cole', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Mason Mecartea';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Krsy Fox', '/6bRT5c4MoP7yP3yza5HFdV9ajra.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Krsy Fox');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jennifer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Krsy Fox';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Luciana VanDette', '/sHu5Kdq0ZnKJpEbVNovXlHmmJKo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Luciana VanDette');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juliet', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Luciana VanDette';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Clint Howard', '/6tugb8rz1hj8tYlSaSmUBD741fw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clint Howard');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Smokey', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Clint Howard';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bradley Stryker', '/3h0F6HRz4He5ESx9mIIIGV90MF2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bradley Stryker');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Bradley Stryker';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Roebuck', '/y40aX3SdvUZwE7feNq77UMg3zge.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Roebuck');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Charlie Johnson / Santa Claus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Daniel Roebuck';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chris Irvine', '/n9A6gsBCwvsF4KcEABU3lHp3jXU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chris Irvine');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Burke', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Chris Irvine';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '톰 새비니', '/zBYnzxzlAIEoanEU00bGYJmRS6k.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 새비니');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bystander', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = '톰 새비니';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason Patric', '/iv21ZjE90f9QNiNONKF9Lp6ZD68.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason Patric');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Michael', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Jason Patric';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alex Ross', '/xDATCXzkSP7I1EJPEKdDNn4IIb0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alex Ross');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mark', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Alex Ross';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kailey Hyman', '/aiREJkXiIT2GIzZcl6M9LPOFbuI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kailey Hyman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brooke', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Kailey Hyman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kellen Raffaelo', '/lAh7h01WIC8MlfJCOoLRpSPJQSp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kellen Raffaelo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Timmy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Kellen Raffaelo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jon Abrahams', '/lB4qv4fTjP02m7w19TFXc29yLUd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jon Abrahams');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dennis', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Jon Abrahams';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Genet', '/bATKiWGbnwyghwHrS6NALcOAYCq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Genet');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jackson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Michael Genet';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Luciana Elisa Quiñonez', '/qeTKeqLo1xj9DsRRUaMrfTYgQg6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Luciana Elisa Quiñonez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Sienna Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Luciana Elisa Quiñonez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lisamarie Falcone', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lisamarie Falcone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dispatch', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Lisamarie Falcone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stephen Cofield Jr.', '/1dUrhHa5ivG8fXILjJBP16AzdQ5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stephen Cofield Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Officer Evans', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Stephen Cofield Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joe Falcone', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joe Falcone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dean', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Joe Falcone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peter Mitchell', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peter Mitchell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cosplayer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Peter Mitchell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marie Maser', '/iFLTBR6mC32zjSsTruT7m7aLCqo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marie Maser');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Receptionist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Marie Maser';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michel Vidal', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michel Vidal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Armor Clad Demon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Michel Vidal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Juliana Lamia', '/3Akrb2CpQFZUoOKTPGcXjgKov3H.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Juliana Lamia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Virgin Mary', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Juliana Lamia';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sienna Hubert-Ross', '/rXZIHcE2re2nqBnwZmowiinr3dz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sienna Hubert-Ross');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stacy Bar Girl #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Sienna Hubert-Ross';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlotte McKee', '/eEYQ2jS1EMBMGPzranEglVETeEB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlotte McKee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stacy Bar Girl #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Charlotte McKee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chip Carriere', '/3OZ3fGF2iWwnhk1jM9gulUcQekk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chip Carriere');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dept Store Santa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Chip Carriere';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrew Hollinger', '/5baqdOJvvba4bnwVMdg0LAaYE3F.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrew Hollinger');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elf', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Andrew Hollinger';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robert Catalano', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robert Catalano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Photographer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Robert Catalano';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lauren Sowa', '/lIck8t2MpRmbB23ugHQDzbRh7w1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lauren Sowa');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Lauren Sowa';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nariyah Simpson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nariyah Simpson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Carol Anne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Nariyah Simpson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Banks Quinney', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Banks Quinney');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Boy #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Banks Quinney';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Evelyn Lee', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Evelyn Lee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Girl #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Evelyn Lee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Israel Acevedo', '/vmyudYvV08JtPHx9WnaVH5YvE3q.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Israel Acevedo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Security Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Israel Acevedo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Schwartz', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Schwartz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Mall Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Samantha Schwartz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jennifer C. Johnson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jennifer C. Johnson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Angry Parent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Jennifer C. Johnson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katie Curri', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katie Curri');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Angry Parent #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Katie Curri';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Preston Christopher Lawrence', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Preston Christopher Lawrence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Angry Parent #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Preston Christopher Lawrence';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tom White', '/2sxm3jvrUGVWu0aSOCVB3wyobkT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tom White');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Angry Parent #4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Tom White';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ryan Usui', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ryan Usui');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Boy #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Ryan Usui';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Annie Lederman', '/o9YMHgUKlXzM54mBR33pL55Q4GG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Annie Lederman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Graven Image Co-Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Annie Lederman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Loverde', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Loverde');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rowdy Beta #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Michael Loverde';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ilia Krisulas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ilia Krisulas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rowdy Beta #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Ilia Krisulas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dominick Muschello', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dominick Muschello');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rowdy Beta #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Dominick Muschello';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Beethovan Oden', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Beethovan Oden');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'News Anchor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1034541 AND a.name = 'Beethovan Oden';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Damien Leone', '/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Damien Leone');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1034541 AND d.name = 'Damien Leone';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/l1175hgL5DoXnqeZQCcU3eZIdhX.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1034541;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/18TSJF1WLA4CkymvVUcKDBwUJ9F.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1034541;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1118031, '아포칼립스 Z: 종말의 시작', '2024-10-04', '', '광견병과 유사한 질병이 지구 전역에 퍼져 사람들이 공격적인 생명체로 변한다. 마넬은 고양이와 함께 집에 숨어서 재치를 발휘해 살아남는다. 곧 둘은 식량을 구하고 육지와 바다의 안전한 곳을 찾기 위해 떠나야 한다.', 119, '', 'RELEASED', 2835.786000, 6.751000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1118031 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1118031 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1118031 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Francisco Ortiz', '/iIwGt05vG5smGDiLJ7f6bMRQOOY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Francisco Ortiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Francisco Ortiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'José María Yázpik', '/uqZE7oXEADJ1NTg7g7xRELw59Hy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'José María Yázpik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pritchenko', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'José María Yázpik';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Berta Vázquez', '/2QNOI5L03XomONmCR42GPyVYryy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Berta Vázquez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucía', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Berta Vázquez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Iria del Río', '/z7Dqvpnb8R13P6B5pmUCDxb2Jvv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iria del Río');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Julia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Iria del Río';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marta Poveda', '/gsQvVa5uipx5YAQ8esJevlmPjsv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marta Poveda');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Belén', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Marta Poveda';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amalia Gómez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amalia Gómez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gabriela', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Amalia Gómez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'María Salgueiro', '/qpJq1ci0IDmew1zl6oEXCx6HGW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'María Salgueiro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sister Cecilia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'María Salgueiro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Iuri Mikhailitxenko', '/5sju9FQLapCyxhXA5VsSJFzeo5Q.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iuri Mikhailitxenko');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ushakov', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Iuri Mikhailitxenko';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ian Monclús', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ian Monclús');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Max', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Ian Monclús';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yaiza Macías', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yaiza Macías');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Laila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Yaiza Macías';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ana García Molero', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ana García Molero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Iria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Ana García Molero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Iago Andrade', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iago Andrade');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Carlos', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Iago Andrade';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mohamed-Ali Boulabiar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mohamed-Ali Boulabiar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kamil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Mohamed-Ali Boulabiar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Сергей Граб', '/2733irSVqzflHSLXnWuO3NvIhwY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Сергей Граб');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sergey', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Сергей Граб';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Beka Lemonjava', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Beka Lemonjava');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cheslav', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Beka Lemonjava';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Niko Verona', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Niko Verona');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nikolai', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Niko Verona';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Oriol Ruiz', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Oriol Ruiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mario', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Oriol Ruiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elena Seijo', '/4ElzTmFnXUHD6MWcKVWLlZuKxIi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elena Seijo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Van Wife', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Elena Seijo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ferran Herrera', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ferran Herrera');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Van Husband', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Ferran Herrera';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joana Oliveira', '/tRaYYPEYdcxw9YKhTiFK6UH7jpo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joana Oliveira');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Portuguese Buyer #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Joana Oliveira';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Thais Kauffmann', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Thais Kauffmann');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Portuguese Buyer #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Thais Kauffmann';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Iván Ros', '/eRTuUiw7kthoifDzplFmLWabCVr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iván Ros');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Supermarket Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Iván Ros';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vanessa Buchaca', '/hieD7H9ityRUhQ1jIa3dQxOevFA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vanessa Buchaca');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Supermarket Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Vanessa Buchaca';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Manuel Lourido', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Manuel Lourido');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nervous Passenger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Manuel Lourido';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sergio Crespo', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sergio Crespo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Airport Guardia Civil Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Sergio Crespo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paloma Otero', '/fiBCYWPthuBMjHYzZsOmOw8yKAn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paloma Otero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Airport Stewardess', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Paloma Otero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Arántzazu Ruiz', '/csveRrPjBO3hjfsaxmHVNw2P6We.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Arántzazu Ruiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Tebar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Arántzazu Ruiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Benjamín Montes', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Benjamín Montes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Housing State MP', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Benjamín Montes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alberto Ladrón', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alberto Ladrón');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Post Accident Medical Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Alberto Ladrón';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Monica McCollin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Monica McCollin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'US Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Monica McCollin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Malcolm McCarthy', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Malcolm McCarthy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cuban McGyver', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Malcolm McCarthy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Javier Oliveras', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Javier Oliveras');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manel Home Policeman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Javier Oliveras';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Enric Fonteta', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Enric Fonteta');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Housing State Burglar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Enric Fonteta';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hicham Malayo', '/k4ZiUldRIOjvi0huluHA7h5jMu7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hicham Malayo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Prisoner #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Hicham Malayo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mou Ghazouan', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mou Ghazouan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Prisoner #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Mou Ghazouan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Manel Loureiro', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Manel Loureiro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Talk Show Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Manel Loureiro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Albert Lesan', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Albert Lesan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Talk Show Expert', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Albert Lesan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laura González', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laura González');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Talk Show Panel Member', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Laura González';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miquel Murga', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miquel Murga');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Talk Show Panel Member', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Miquel Murga';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Francesc Galceran', '/43WooYCrUTlpeStMWJGwAZE6HLE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Francesc Galceran');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Health Department Spokesman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Francesc Galceran';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jesús Lloveras', '/c4qASKR8pxBxSYwLWd937VzkdRw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jesús Lloveras');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Government President', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Jesús Lloveras';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Carles Torrens', '/jBGDX4BwsytGhPehgrrPKFFlIgn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Carles Torrens');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1118031 AND d.name = 'Carles Torrens';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hofZ9t2zQEYjQWNZ8cPjMByVHci.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1118031;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/2fxnTXr8NwyTFkunkimJkGkhqfy.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1118031;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1184918, '와일드 로봇', '2024-09-12', '너를 통해 더 넓은 세상을 만나다', '우연한 사고로 거대한 야생에 불시착한 로봇 로즈는 주변 동물들의 행동을 배우며 낯선 환경 속에 적응해 가던 중, 사고로 세상에 홀로 남겨진 아기 기러기 브라이트빌의 보호자가 된다. 로즈는 입력되어 있지 않은 새로운 역할과 관계에 낯선 감정을 마주하고 겨울이 오기 전에 남쪽으로 떠나야 하는 브라이트빌을 위해 동물들의 도움을 받아 이주를 위한 생존 기술을 가르쳐준다. 그러나 선천적으로 몸집이 작은 브라이트빌은 짧은 비행도 힘겨워 하는데...', 102, 'ALL', 'RELEASED', 2214.674000, 8.491000, 292583746, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1184918 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1184918 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1184918 AND g.name = '가족';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루피타 뇽오', '/y40Wu1T742kynOqtwXASc5Qgm49.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루피타 뇽오');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Roz / Rummage (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '루피타 뇽오';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '페드로 파스칼', '/9VYK7oxcqhjd5LAH6ZFJ3XzOlID.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '페드로 파스칼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fink (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '페드로 파스칼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '킷 코너', '/gCIdbnV9D3lzTaOB0YtuKDz6Nt0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '킷 코너');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brightbill (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '킷 코너';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '빌 나이', '/ixFI2YCGNGJfwlpI8iyhvVZRg8C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '빌 나이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Longneck (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '빌 나이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스테파니 수', '/8gb3lfIHKQAGOQyeC4ynQPsCiHr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스테파니 수');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vontra (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '스테파니 수';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt Berry', '/7a1sWg1W7ZmNF8bLSnyAlJgQQGD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt Berry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paddler (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Matt Berry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '빙 레임스', '/4gpLVNKPZlVucc4fT2fSZ7DksTK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '빙 레임스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thunderbolt (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '빙 레임스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마크 해밀', '/2ZulC2Ccq1yv3pemusks6Zlfy2s.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마크 해밀');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thorn (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '마크 해밀';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '캐서린 오하라', '/cMBxHeztNVc8YXKcj084Mdd3f3U.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '캐서린 오하라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pinktail (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '캐서린 오하라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Boone Storm', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Boone Storm');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Brightbill (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Boone Storm';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexandra Novelle', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexandra Novelle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Snowdown (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Alexandra Novelle';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Raphael Alejandro', '/cBS5Sin0fATnHWS4ofYIYQG8suH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Raphael Alejandro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Peck (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Raphael Alejandro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paul-Mikél Williams', '/5f6YOmEZkAzt95Hm2oihuvRCdRK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paul-Mikél Williams');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Feather (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Paul-Mikél Williams';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eddie Park', '/r96gdQnmER5O4RfdBdMOT2sVT5I.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eddie Park');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Honkington (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Eddie Park';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '디 브래들리 베이커', '/9oFnToDZWp0I484s7Ua1EzNQQ2m.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '디 브래들리 베이커');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Raccoons / Squirrels / Badgers (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '디 브래들리 베이커';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Randy Thom', '/oWv5U4r7NcIlQjs0IxMWE3dsx2l.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Randy Thom');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'RECOs (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Randy Thom';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Avrielle Corti', '/rgzPmGIVWyufBgMqApTxtHjYZmv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Avrielle Corti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Automated Alarms (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Avrielle Corti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Keston John', '/zEqkvuCDDgiErHg3XNyoG5TulUg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Keston John');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Weasel 1 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Keston John';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '맥스 미틀먼', '/zQqiIgestpxssPrUXQXkY2Sq0y8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '맥스 미틀먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Weasel 2 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = '맥스 미틀먼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Piotr Michael', '/r9ddS7WpHoLLb0KMEeRE3QSECnW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Piotr Michael');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Broadfoot / Weasel 3 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Piotr Michael';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alessandro Beghi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alessandro Beghi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 1 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Alessandro Beghi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tiago Martinez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tiago Martinez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 2 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Tiago Martinez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Becca Last', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Becca Last');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 3 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Becca Last';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Madelyn Turpin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Madelyn Turpin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 3, 4, 5, 6 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Madelyn Turpin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kayleigh Rayne', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kayleigh Rayne');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 4, 7 / Baby Bunny 2 / Baby Skunk (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Kayleigh Rayne';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Isabelle Tupin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Isabelle Tupin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 8, 9 / Baby Bunny 1 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Isabelle Tupin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Beckett Blomberg', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Beckett Blomberg');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 10 / Chipmunk / Baby Lynx (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Beckett Blomberg';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Damon Fung', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Damon Fung');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 11 / Baby Otter (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Damon Fung';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'King Moore', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'King Moore');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Opossum 12 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'King Moore';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Collin Erker', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Collin Erker');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Skunk (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1184918 AND a.name = 'Collin Erker';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '크리스 샌더스', '/6CtrIOCxggJ5eIAWeFQqd4Hs9FP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '크리스 샌더스');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1184918 AND d.name = '크리스 샌더스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/8dkuf9IuVh0VZjDTk7kAY67lU0U.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1184918;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/v9acaWVVFdZT5yAU7J2QjwfhXyD.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1184918;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (933260, '서브스턴스', '2024-09-07', '더 나은 버전의 당신을 꿈꿔본 적 있나요?', '더 나은 버전의 당신을 꿈꿔본 적 있나요? 당신의 인생을 바꿔줄 신제품 ‘서브스턴스’. ‘서브스턴스’는 또 다른 당신을 만들어냅니다. 새롭고, 젊고, 더 아름답고, 더 완벽한 당신을. 단 한가지 규칙, 당신의 시간을 공유하면 됩니다. 당신을 위한 일주일, 새로운 당신을 위한 일주일, 각각 7일간의 완벽한 밸런스. 쉽죠? 균형을 존중한다면… 무엇이 잘못될 수 있을까요?', 140, '15', 'RELEASED', 2340.232000, 7.300000, 46818041, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 933260 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 933260 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 933260 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데미 무어', '/brENIHiNrGUpoBMPqIEQwFNdIsc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데미 무어');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elisabeth', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = '데미 무어';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마가렛 퀄리', '/pSRCcDQBibsr6wb3FlKmEvh7zen.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마가렛 퀄리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sue', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = '마가렛 퀄리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데니스 퀘이드', '/lMaDAJHzsKH7U3dln2B3kY3rOhE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데니스 퀘이드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Harvey', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = '데니스 퀘이드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Edward Hamilton-Clark', '/q1EWL2z2xMcbf84TpOTqGs6Csxs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Edward Hamilton-Clark');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fred', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Edward Hamilton-Clark';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gore Abrams', '/bKMTqbl0FYlzIC6aTMKQZNAhhXK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gore Abrams');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Oliver', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Gore Abrams';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Oscar Lesage', '/6yd3eODeuk0nuiFYbmLzpDTL5k2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Oscar Lesage');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Troy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Oscar Lesage';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christian Erickson', '/cpEzQNW1EsRmK8SMj4y5xwevXwM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christian Erickson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man at Diner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Christian Erickson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robin Greer', '/ndu0tbz16mtOchMROcnJf2pPchg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robin Greer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Male Nurse', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Robin Greer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tom Morton', '/aOdP4niQX4ckaFwPQmbf0mlYTC5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tom Morton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Tom Morton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hugo Diego Garcia', '/mC0Aly8hHgNIYvZSa1SZmYU47pn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hugo Diego Garcia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diego - Boyfriend', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Hugo Diego Garcia';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Knight', '/t3O1QKPY0rUPtxKn2PEw2SaIXdc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Knight');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Casting Director', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Daniel Knight';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jonathon Carley', '/bH24Nwl08G2EE0PXJazYis9Pskg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonathon Carley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Assistant Casting Director', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jonathon Carley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jiselle Henderkott', '/yLsxObkm4b3aZbCWIN4gijimIdE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jiselle Henderkott');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Girl Auditioning / New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jiselle Henderkott';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Akil Wingate', '/4fUMoe4WlT8QcZBRUufTDYargVm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Akil Wingate');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Akil Wingate';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vincent Colombe', '/gX6p0VVA8PDmh9R1svg0ssky9za.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vincent Colombe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man in Suit #1 - Harvey''s Office', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Vincent Colombe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Billy Bentley', '/wgC7RN7YEmzZKOPyT8Fhw9vFwOg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Billy Bentley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man in Suit #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Billy Bentley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lennard Ridsdale', '/nGoZyR2vBNdnzSFXrhUKrankf3w.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lennard Ridsdale');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man in Suit #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Lennard Ridsdale';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jordan Ford Silver', '/azACssL5RUEey0UObSwfOUagh72.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jordan Ford Silver');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Assistant Director - Pump It Up Show', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jordan Ford Silver';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Oscar Salem', '/bd7kRaNJl2cyrAD20HKYr4k1APW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Oscar Salem');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '2nd Assistant Director - Pump It Up Show', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Oscar Salem';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Viviane Bossina', '/6HfWfVChPsclcdZlshaaeQkFtFL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Viviane Bossina');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sue''s Assistant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Viviane Bossina';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Luret', '/hBsHT3QYfWCo4xyKGhQOGweDEcT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Luret');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Floor Runner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Matthew Luret';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jana Bittnerová', '/gLeqqJGfhsKZc7o9caG4s1349tj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jana Bittnerová');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jana Bittnerová';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olivier Raynal', '/zgKTo9x5RNdtzR8bFkRQ1MojOMK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olivier Raynal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Alan - 2nd Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Olivier Raynal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tiffany Hofstetter', '/b8RaM7sU50wPNDbZmudGh02fZua.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tiffany Hofstetter');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stylist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Tiffany Hofstetter';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nicolas Royer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nicolas Royer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guy in the Elevator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Nicolas Royer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nathan Rippy', '/g7IIUVYpEbZpDr0vfTcaotzl5zw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nathan Rippy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Assistant Director - New Year''s Eve Show', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Nathan Rippy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Manon Arizmendi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Manon Arizmendi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Girl - New Year''s Eve Show', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Manon Arizmendi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Virginie Kotlinski', '/GFY0G7HfH121d1KDCYjELcXOSt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Virginie Kotlinski');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mother - New Year''s Eve Show', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Virginie Kotlinski';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brett Gillen', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brett Gillen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Director of Photography - New Year''s Eve Show', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Brett Gillen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlotte Marquardt', '/1U0uYpK0IqafxUterGlpGbiHzwC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlotte Marquardt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Charlotte Marquardt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Léa Hengl', '/hkwFrZ9o3Jf4UudMoScvHmDex0P.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Léa Hengl');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Léa Hengl';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gaëlle Raymond', '/onJ0irXE8Wo8a7N2rM3Yk0Ckx0F.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gaëlle Raymond');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Gaëlle Raymond';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Claire Lemaire', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Claire Lemaire');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Claire Lemaire';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lila Boughoufala', '/nLNr8dxJhXgHWJgjJbPhTSJoFoJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lila Boughoufala');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Lila Boughoufala';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aurélien Lorgnier', '/gcKrO8xE09GZ7kNPKr8vRZJBxkW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aurélien Lorgnier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Aurélien Lorgnier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivan Sellier', '/9OUxKKXKLqQgEX7aHqHvUPrjmIi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivan Sellier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Ivan Sellier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Philip Schurer', '/7fGa2ESs2wg7540VsOZnf4F3r56.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Philip Schurer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Philip Schurer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christian Bourmier', '/AvBb4KYuNFnNaffqB3Ou58tJI0C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christian Bourmier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Christian Bourmier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martin Graham', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martin Graham');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Martin Graham';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christian Bordeleau', '/2o4roepy4SAWNNsQtIYNlNts4FR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christian Bordeleau');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Christian Bordeleau';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Patrick Hamel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Patrick Hamel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Patrick Hamel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Didier D''Hondt', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Didier D''Hondt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Didier D''Hondt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jacques-Yves Dorges', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jacques-Yves Dorges');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jacques-Yves Dorges';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jean-Claude Matthey', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jean-Claude Matthey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jean-Claude Matthey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olivier Jarcin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olivier Jarcin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Olivier Jarcin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jean-Luc Magneron', '/tKRAaaTWbxUiHuUb0Q6UN90HfBi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jean-Luc Magneron');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shareholder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jean-Luc Magneron';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlotte Murray', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlotte Murray');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Allison - Diner Waitress', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Charlotte Murray';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aaron Kahn', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aaron Kahn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greeting Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Aaron Kahn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gabriela Arnon', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gabriela Arnon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greeting Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Gabriela Arnon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nancy Josephson Lahoussine', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nancy Josephson Lahoussine');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greeting Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Nancy Josephson Lahoussine';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrew Eldridge', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrew Eldridge');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greeting Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Andrew Eldridge';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Denise Powers', '/9lOxyotDqxek5KaGxsSbVsqQhCk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Denise Powers');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greeting Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Denise Powers';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bryan Jones', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bryan Jones');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Greeting Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Bryan Jones';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adam Carage', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adam Carage');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Happy Birthday Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Adam Carage';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maria McClurg', '/4dAQsImcDS6tkxWocqsrdaPAFaf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maria McClurg');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Happy Birthday Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Maria McClurg';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrew Desmond', '/8BLMsLEVmTXI3o5gHHVpZZNvk2X.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrew Desmond');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Happy Birthday Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Andrew Desmond';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rebecca Lafont', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rebecca Lafont');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Happy Birthday Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Rebecca Lafont';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laura Puech', '/oVEbWlj6IpxxhYYEEZJplknZvmZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laura Puech');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Isabella', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Laura Puech';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ryan Chidester', '/3R5cX2LPRSdY6GCqFBcP9Muq8Zv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ryan Chidester');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stagehand', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Ryan Chidester';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Céline Vogt', '/2pkBIL8OKXXWr1SERPsr7LVAsQX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Céline Vogt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elisabeth (Young) - Walk of Fame', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Céline Vogt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yannick Guérin', '/u1A0ib1nHEhwVBZWJVW9Nq7AnCW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yannick Guérin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clumsy Burger Guy - Walk of Fame', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Yannick Guérin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jean Miel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jean Miel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Worker Walk of Fame', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jean Miel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paul Descoings', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paul Descoings');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Worker Walk of Fame', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Paul Descoings';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Benoit Lévêque', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Benoit Lévêque');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Worker Walk of Fame', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Benoit Lévêque';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Arthur Molinet', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Arthur Molinet');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cocktail Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Arthur Molinet';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Manon Sachot', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Manon Sachot');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cocktail Lounge Couple', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Manon Sachot';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bastien Jorelle', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bastien Jorelle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cocktail Lounge Couple', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Bastien Jorelle';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kelly Hoarau', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kelly Hoarau');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Female Assistant - Towel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Kelly Hoarau';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michel Juskiewicz', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michel Juskiewicz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'George - Harvey''s Friend', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Michel Juskiewicz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Louise Greggory', '/lJSP6nvsoUZ8VpewtCsb9x170r8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Louise Greggory');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Restaurant Waitress', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Louise Greggory';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christophe Sartirano', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christophe Sartirano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guy Looking at Sue', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Christophe Sartirano';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Florent Torres', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Florent Torres');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guy Looking at Sue', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Florent Torres';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Romain Caldeira', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Romain Caldeira');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Billboard Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Romain Caldeira';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Barthelemy Thomas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Barthelemy Thomas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Billboard Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Barthelemy Thomas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Axel Baille', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Axel Baille');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Photographer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Axel Baille';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ashley Lambert', '/ucsdNz1pdVWwRFwf4dtjfaXE8nR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ashley Lambert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Ashley Lambert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ranjani Brow', '/zvhcwnrvDpa4iZGgdKgQ8GWdYJI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ranjani Brow');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Ranjani Brow';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chase Fein', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chase Fein');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Chase Fein';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Shane Sweet', '/3fVAoIbfMO2XKtMsIOVpo5fkXVq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Shane Sweet');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Shane Sweet';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'William Calvert', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'William Calvert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'William Calvert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Corbett', '/AfaPGnHtlyt9uEUgY7jzSZ1FvkF.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Corbett');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Michael Corbett';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stephen Apostolina', '/lzArKp0G0PNYQ3VrTHFzEigK63e.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stephen Apostolina');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Stephen Apostolina';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yann Bean', '/mt1AjqrEdCH8c5QQLaprYYbgl1W.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yann Bean');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Substance (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Yann Bean';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Audrey Alcide', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Audrey Alcide');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pump It Up Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Audrey Alcide';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jonathan Jenvrin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonathan Jenvrin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pump It Up Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Jonathan Jenvrin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mimi Maury', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mimi Maury');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pump It Up Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Mimi Maury';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amelye Solange', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amelye Solange');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pump It Up Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Amelye Solange';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kévin Table', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kévin Table');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pump It Up Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Kévin Table';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laura Boera', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laura Boera');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sparkle Your Life Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Laura Boera';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cissy Duc', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cissy Duc');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sparkle Your Life Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Cissy Duc';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sophie Mercier', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sophie Mercier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sparkle Your Life Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Sophie Mercier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marie Valton', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marie Valton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sparkle Your Life Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Marie Valton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katrina Budzynski', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katrina Budzynski');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Katrina Budzynski';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alicia Maury', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alicia Maury');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Alicia Maury';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Megane Adamik', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Megane Adamik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Megane Adamik';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Annalisa Pagnotta', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Annalisa Pagnotta');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Annalisa Pagnotta';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maelle Dantigny', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maelle Dantigny');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Maelle Dantigny';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aleksandra Fontaine Kedzierska', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aleksandra Fontaine Kedzierska');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Aleksandra Fontaine Kedzierska';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pauline Sagetat', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pauline Sagetat');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Pauline Sagetat';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Agustina Fitzsimons', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Agustina Fitzsimons');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Agustina Fitzsimons';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elena Shcheglova', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elena Shcheglova');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Elena Shcheglova';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eve Marchant', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eve Marchant');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Eve Marchant';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lola Donati', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lola Donati');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Lola Donati';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kate Matthews', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kate Matthews');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Kate Matthews';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ophélie Jonard', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ophélie Jonard');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Ophélie Jonard';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pauline Richard', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pauline Richard');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Pauline Richard';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laureen Cappelliez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laureen Cappelliez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Laureen Cappelliez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daria Panchenko', '/98YYMjwWVklAtNnaT8VYVS1R9JY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daria Panchenko');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Daria Panchenko';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Delphine Beaulieu', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Delphine Beaulieu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Delphine Beaulieu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Victoria Brun', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Victoria Brun');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Victoria Brun';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cara Chapman', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cara Chapman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Cara Chapman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katharine Matthews', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katharine Matthews');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Katharine Matthews';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexandra Faget', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexandra Faget');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Alexandra Faget';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Clémence Juville', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clémence Juville');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Clémence Juville';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Margot L''Entete', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Margot L''Entete');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Margot L''Entete';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hillary Sukhonos', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hillary Sukhonos');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'New Year''s Eve Show Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Hillary Sukhonos';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Géczy', '/z6E5VeyI12MigTCKiK3WLNAR3hI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Géczy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bob Haswell (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Matthew Géczy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Namory Bakayoko', '/ubnYods7K3DCySc3FjqALdl1Khv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Namory Bakayoko');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Silhouette (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Namory Bakayoko';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gregory Defleur', '/x17Y35kVZAIcDKVuEiW1tBUruFq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gregory Defleur');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Happy Birthday Person (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 933260 AND a.name = 'Gregory Defleur';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '코랄리 파르자', '/8TlTqFD5RnJGBxxzarpvygZlRXC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '코랄리 파르자');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 933260 AND d.name = '코랄리 파르자';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/pq5Wh3DE0KIBjF2kdGHn98eV1PC.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 933260;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/7h6TqPB3ESmjuVbxCxAeB1c9OB1.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 933260;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (698687, '트랜스포머 ONE', '2024-09-11', '모든 것이 바뀐다', '사이버트론 행성의 지하 광산에서 일하는 변신 못 하는 하급 로봇 오라이온 팩스와 D-16. 한 번도 가보지 못한 지상 세계를 꿈꾸던 둘은 쾌활한 수다쟁이 B-127, 카리스마 넘치는 엘리타 원과 함께 출입이 금지된 지상에 도달한다. 지상에서 잠들어 있던 알파 트라이온을 만난 넷은 그의 도움으로 잠재되어 있던 변신 능력을 얻게 된다. 막강한 힘과 변신 능력으로 자유를 느낀 것도 잠시, 자신들의 행성을 지배하고 있는 거대한 배후의 존재를 알게 되며 모든 것을 바꿀 전쟁을 시작하는데…', 104, 'ALL', 'RELEASED', 1858.319000, 8.096000, 124530200, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 698687 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 698687 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 698687 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 698687 AND g.name = '가족';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스 헴스워스', '/piQGdoIQOF3C1EI5cbYZLAW1gfj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스 헴스워스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Orion Pax / Optimus Prime (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '크리스 헴스워스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '브라이언 타이리 헨리', '/2MsJh0bpyzwvOUnXOltHp3j85Pb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '브라이언 타이리 헨리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'D-16 / Megatron (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '브라이언 타이리 헨리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스칼렛 요한슨', '/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스칼렛 요한슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elita-1 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '스칼렛 요한슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '키건마이클 키', '/xmdzYXP9j87a43FSiL138nLesuS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '키건마이클 키');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'B-127 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '키건마이클 키';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '존 햄', '/mrXE5fZbEDPc7BEE5G21J6qrwzi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 햄');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sentinel Prime (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '존 햄';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티브 부세미', '/n0pZumkrcZrAPMoPq684RhYnjPV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티브 부세미');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Starscream (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '스티브 부세미';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '로렌스 피시번', '/aBRISux1AGCqkFNTKHYfLcJunWA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로렌스 피시번');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Alpha Trion (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '로렌스 피시번';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vanessa Liguori', '/9EkNTWHZ1U83XuQJ9VU9sldxI9g.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vanessa Liguori');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Airachnid (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Vanessa Liguori';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jon Bailey', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jon Bailey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soundwave (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Jon Bailey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason Konopisos-Alvarez', '/vWunN0rdthwvaX3FOj1tmQIMylD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason Konopisos-Alvarez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shockwave / Guard 2 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Jason Konopisos-Alvarez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Evan Michael Lee', '/t5ge6vhIRLX9VjOw9Q2nInhw57T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Evan Michael Lee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jazz (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Evan Michael Lee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Remar', '/56LwfMaMge2LmWYI46O6R2Wm0YX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Remar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zeta Prime (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'James Remar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Isaac C. Singleton Jr.', '/AsVdOAbT1Ewqy6fbWZTvfKWkt4r.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Isaac C. Singleton Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Darkwing (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Isaac C. Singleton Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steve Blum', '/cpO0muunoigq1WHegeOEI1AIQAo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steve Blum');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Announcer Bot / Guard 1 (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Steve Blum';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jinny Chung', '/wpYVdTxPIBblaNyluy4ghauxpOb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jinny Chung');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chromia / Arcee (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Jinny Chung';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조시 쿨리', '/eGN0vaFmKtqHu1nFi3Lv4roQ6P2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조시 쿨리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Control Room Guys / PA System / Skywarp (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = '조시 쿨리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dillon Bryan', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dillon Bryan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Injured Racer (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Dillon Bryan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ty Dolla Sign', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ty Dolla Sign');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'me', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 698687 AND a.name = 'Ty Dolla Sign';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '조시 쿨리', '/eGN0vaFmKtqHu1nFi3Lv4roQ6P2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '조시 쿨리');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 698687 AND d.name = '조시 쿨리';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/c2JXlWzvXegSda8qaATr8I47kMx.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 698687;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/zViRwl3ySscZnbXZJ2Q9wq3SeUG.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 698687;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (533535, '데드풀과 울버린', '2024-07-24', '', '히어로 생활에서 은퇴한 후, 평범한 중고차 딜러로 살아가던 ‘데드풀’이 예상치 못한 거대한 위기를 맞아 모든 면에서 상극인 ‘울버린’을 찾아가게 되며 펼쳐지는 도파민 폭발 액션 블록버스터.', 128, '19', 'RELEASED', 1974.511000, 7.700000, 1336816112, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 533535 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 533535 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 533535 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '라이언 레이놀즈', '/6m3hkkHmKkD4MUJhng7ojE7MLKC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '라이언 레이놀즈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Wade Wilson / Deadpool / Nicepool', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '라이언 레이놀즈';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '휴 잭맨', '/4Xujtewxqt6aU0Y81tsS9gkjizk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '휴 잭맨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Logan / Wolverine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '휴 잭맨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '엠마 코린', '/wqGOVOsHzZaHeHymIS40elGCnY0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '엠마 코린');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cassandra Nova', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '엠마 코린';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '매튜 맥패디언', '/2FF3Yjxd7DYR4EIJL6s2GpKDMkJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '매튜 맥패디언');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Paradox', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '매튜 맥패디언';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '다프네 킨', '/g325OIjIHrFr0te8ewPfhKQ2SKj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '다프네 킨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Laura / X-23', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '다프네 킨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '존 패브로', '/tnx7iMVydPQXGOoLsxXl84PXtbA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 패브로');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Happy Hogan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '존 패브로';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '모레나 바카린', '/kBSKKaOtsqIzZPhtEeHfCBmhWl9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '모레나 바카린');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vanessa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '모레나 바카린';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '롭 딜레이니', '/xirfT1znRkkughLiPemKu3NhkKQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '롭 딜레이니');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Peter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '롭 딜레이니';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레슬리 어검스', '/peLaqLcs3y2WY4TbrLOXQGt9I8S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레슬리 어검스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Blind Al', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '레슬리 어검스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제니퍼 가너', '/ftymEXqdTnXfaI6dGd9qrJoFOSE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제니퍼 가너');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elektra', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '제니퍼 가너';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '웨슬리 스나입스', '/81D6oJ81kiQ5xnEHhaHrY29ntdO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '웨슬리 스나입스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Blade', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '웨슬리 스나입스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '채닝 테이텀', '/4TpgnS6l8YUXSne9Av9nda6mjxY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '채닝 테이텀');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gambit', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '채닝 테이텀';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스 에반스', '/3bOGNsHlrswhyW79uvIHH1V43JI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스 에반스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Johnny Storm', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '크리스 에반스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '헨리 카빌', '/iWdKjMry5Pt7vmxU7bmOQsIUyHa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '헨리 카빌');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Cavillrine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '헨리 카빌';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '운미 모사쿠', '/mWDsVCo9sBcekrsjUTsoCFLhtYt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '운미 모사쿠');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'B-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '운미 모사쿠';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '에런 스탠퍼드', '/xt2c0vdTb6UmSFq6fl09iCcIFve.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '에런 스탠퍼드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pyro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '에런 스탠퍼드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '타일러 메인', '/h5knoBWStVv7a0FKPwfKV7f7Ez1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '타일러 메인');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sabretooth', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '타일러 메인';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '카란 소니', '/t3eNrzRKy3wTVCUiEp002UXbjxX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '카란 소니');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dopinder', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '카란 소니';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '브리아나 힐데브란드', '/pldlpvPSOdapI9q7p8tT6qkZwra.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '브리아나 힐데브란드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Negasonic Teenage Warhead', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '브리아나 힐데브란드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '쿠츠나 시오리', '/5EdMbcRIemzLszjEr36Ic0Obmdb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '쿠츠나 시오리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yukio', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '쿠츠나 시오리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스테판 카피식', '/6qHO7ckiyjLNOmW0v5RZj1MpLBj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스테판 카피식');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Colossus (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '스테판 카피식';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '랜달 리더', '/eJfW7w36Vl8dEnN9T2dnlkUReWG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '랜달 리더');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Buck', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '랜달 리더';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루이스 탠', '/ik347wakcZRfULiLbjGJpRcqSQz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루이스 탠');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shatterstar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '루이스 탠';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nick Pauley', '/9cJGBxmPiZ21C71DueJLDOuPc5c.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nick Pauley');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dancepool', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Nick Pauley';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sonita Henry', '/oIBILFSVqHT2warKlXSPDML3llI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sonita Henry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Chipman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Sonita Henry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ryan McKen', '/lGVReBLi74MCxaCBr2KBx1zTiWV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ryan McKen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Chipman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Ryan McKen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nanak Phlora', '/xaRRJYU4nu5JiTWVjrG02Ehg33T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nanak Phlora');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elliot Chipman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Nanak Phlora';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aydin Ahmed', '/wAvCizcwtr8rxfDSoDlIvINFQj2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aydin Ahmed');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kevin Chipman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Aydin Ahmed';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Leemore Marrett Jr.', '/lrr8xbevZFfCMixuSPnUjwO2Oqa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Leemore Marrett Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Minuteman Leader', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Leemore Marrett Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Dryden', '/1Z3CjM13uhOlt6dUyHaewkBjUcO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Dryden');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TVA Tech', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'James Dryden';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ollie Palmer', '/kICsR18nsLMjxMrIWjJKtOsAkJj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ollie Palmer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bar Patron', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Ollie Palmer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Greg Hemphill', '/juE0ZmdUbxfMBhtOz9LBV8MiLKH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Greg Hemphill');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Seedy Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Greg Hemphill';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aaron W Reed', '/e9dW9ezNxeGEu8MnQ1NTOz3PM93.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aaron W Reed');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juggernaut', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Aaron W Reed';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mike Waters', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mike Waters');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Blob', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Mike Waters';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rob McElhenney', '/gcep3ItyxaZ3ljH1IS6Lfkm8IAs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rob McElhenney');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TVA Soldier', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Rob McElhenney';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Reynolds', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Reynolds');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Screaming Mutant (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'James Reynolds';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ed Kear', '/jB1QY1DSN253bbtz51MHXEBj9O8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ed Kear');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Outpost Tech', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Ed Kear';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paul G. Raymond', '/28pPNcmHZuH4XM4eUHoFGZF6LGA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paul G. Raymond');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TVA Office Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Paul G. Raymond';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '블레이크 라이블리', '/rkGVjd6wImtgjOCi0IpeffdEWtb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '블레이크 라이블리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ladypool (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '블레이크 라이블리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Inez Reynolds', '/5LLlPfq78KnOGlMFGlcyDSKunRG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Inez Reynolds');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kidpool (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Inez Reynolds';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '네이선 필리언', '/6arEYF9gD9mqjwGXv1QfqmLw445.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '네이선 필리언');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Headpool (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '네이선 필리언';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '매튜 매커너히', '/rUxLWWCDUF8RnDaocSqrVDJ2MS1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '매튜 매커너히');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cowboypool (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '매튜 매커너히';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'OIin Reynolds', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'OIin Reynolds');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Babypool (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'OIin Reynolds';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paul Mullin', '/bZZ4wvdMJtt6aPUSQAAY4G7mzbe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paul Mullin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Welshpool', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Paul Mullin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alex Kyshkovych', '/nyy5o659Z1LfLl9ckRT1FiNop4U.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alex Kyshkovych');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Canadapool', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Alex Kyshkovych';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스 헴스워스', '/piQGdoIQOF3C1EI5cbYZLAW1gfj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스 헴스워스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thor Odinson (archive footage) (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = '크리스 헴스워스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Billy Clements', '/nipJ22DXJBsdM1teQodwop42U6S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Billy Clements');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Russian (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Billy Clements';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Medina Ramos', '/3ZmlKGTlBF09ZxmoOH9lB1xdsf2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Medina Ramos');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Toad (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Daniel Medina Ramos';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jade Lye', '/4r1zrh8Wf32W74fltUn37Uz2FfV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jade Lye');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lady Deathstrike (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Jade Lye';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nilly Cetin', '/vLKWIjSztXEHUOMFolVudij4jbs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nilly Cetin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Quill (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Nilly Cetin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eduardo Gago Muñoz', '/r9DaaOfiACoUX7Ezs63K8DZrpHI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eduardo Gago Muñoz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Azazel (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Eduardo Gago Muñoz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chloe Kibble', '/6jgp3IJenhe9R1cdV25gfzlSDpy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chloe Kibble');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Callisto (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Chloe Kibble';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Curtis Rowland Small', '/lgAOeihmiZ2CdKWpa35BxpBeSiK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Curtis Rowland Small');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bullseye (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Curtis Rowland Small';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ayesha Hussain', '/7bChdeG2k7GoAf8nG12p05Ssrbe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ayesha Hussain');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Psylocke (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Ayesha Hussain';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jessica Walker', '/5fZ41rVpPKI5VpBFt2dBRcOaHtL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jessica Walker');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arclight (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Jessica Walker';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Harry Holland', '/8gsfzGUySLLaT0GCzuWxAfLWOWS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Harry Holland');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Haroldpool (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Harry Holland';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kevin Fortin', '/bRBUOhX9Oc0A2nNARsP4jkoDzva.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kevin Fortin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zenpool (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 533535 AND a.name = 'Kevin Fortin';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '숀 레비', '/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '숀 레비');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 533535 AND d.name = '숀 레비';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/4Zb4Z2HjX1t5zr1qYOTdVoisJKp.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 533535;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/dvBCdCohwWbsP5qAaglOXagDMtk.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 533535;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (845781, '레드 원', '2024-10-31', '크리스마스 실종 위기, 사라진 산타를 찾기 위한 대환장 플레이', '크리스마스 D-1, 철통같은 보안을 뚫고 코드명 ''레드 원'' 산타클로스가 납치되고 크리스마스가 사라질 위기에 처했다! ''레드 원''을 찾기 위해 사령관 ''칼럼 드리프트''는 산타클로스 따위는 없다고 믿는 현상금 사냥꾼 ''잭 오말리''와 협력하기로 한다. 시작부터 삐그덕 거리는 이들 앞에 크리스마스의 존재를 위협하는 위험천만한 적들이 나타나는데…', 124, '12', 'NOW_PLAYING', 1569.174000, 6.700000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 845781 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 845781 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 845781 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 845781 AND g.name = '판타지';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 845781 AND g.name = '가족';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '드웨인 존슨', '/5QApZVV8FUFlVxQpIK3Ew6cqotq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '드웨인 존슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Callum Drift', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = '드웨인 존슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스 에반스', '/3bOGNsHlrswhyW79uvIHH1V43JI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스 에반스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jack O''Malley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = '크리스 에반스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'J.K. 시몬스', '/ScmKoJ9eiSUOthAt1PDNLi8Fkw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'J.K. 시몬스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nick', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'J.K. 시몬스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루시 리우', '/9nbtjqsx3De7hO2XDtrBQ7M9VCH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루시 리우');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zoe', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = '루시 리우';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '키어넌 십카', '/t2FWVLTIhVRIa398mQAfN4thO5R.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '키어넌 십카');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gryla', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = '키어넌 십카';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bonnie Hunt', '/tT9C6uLztgN8OxJULq6F9iEzqlA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bonnie Hunt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Claus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Bonnie Hunt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스토페르 히비우', '/bACL39GihNmBnFRay78rS3PUHsH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스토페르 히비우');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = '크리스토페르 히비우';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '닉 크롤', '/vdgpGtSXqTBnIKrKNMZocdFu7pX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '닉 크롤');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ted', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = '닉 크롤';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Wesley Kimmel', '/lN3VfrQiYmU9ldZRHie8PQtnOe2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Wesley Kimmel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dylan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Wesley Kimmel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mary Elizabeth Ellis', '/8tf8w69Bl6MO5P8r8Vk6dFnHKxx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mary Elizabeth Ellis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Olivia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Mary Elizabeth Ellis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Wyatt Hunt', '/eReBvLrAK1iIlplX6KFSQMjFalQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Wyatt Hunt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Jack O''Malley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Wyatt Hunt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lanz Duffy', '/4KCQbqLaboyy4lV4NviKk1BWc9L.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lanz Duffy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gene', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Lanz Duffy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marc Evan Jackson', '/4TWP0nlhkxkZ5XzzZuz3RCoZjFX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marc Evan Jackson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Uncle Rick', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Marc Evan Jackson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ashleigh Domangue', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ashleigh Domangue');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jamie Hummiston', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Ashleigh Domangue';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cody Easterbrook', '/bHg59MI827yQ7Gt2mA8Dyzopso8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cody Easterbrook');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'HIT Instructor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Cody Easterbrook';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jon Rudnitsky', '/y9S1Glj4T6W4v1ZkYMy3BnLccDp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jon Rudnitsky');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Beef Stew', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Jon Rudnitsky';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Morla Gorrondona', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Morla Gorrondona');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ogre Gryla (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Morla Gorrondona';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jenna Kanell', '/xrWxxvNsZvBVHeeS3RIlhi8rGyA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jenna Kanell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Jenna Kanell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rod Maxwell', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rod Maxwell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Rod Maxwell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fedor Steer', '/yLWpuAgEmitslvQLm9h8tyB8KnK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fedor Steer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Fedor Steer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Octavia Grace', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Octavia Grace');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Octavia Grace';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Zuk', '/jifQz74EU8qsigSgNZR2u2SDhek.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Zuk');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Matthew Zuk';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cora Kass', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cora Kass');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Krampus Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Cora Kass';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ahmad Ghafouri', '/yMQoY35dJ4yxwAmjTt8YFdkFek2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ahmad Ghafouri');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stage Manager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Ahmad Ghafouri';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jeff Chase', '/Ahj74X5BioIUDRhdWD8i43j0pXM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jeff Chase');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cyclops', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Jeff Chase';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gary Peebles', '/mSjrV4nWtAWxmFG61zJIsHtbMld.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gary Peebles');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Gary Peebles';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Cornwell', '/6j1squGcSCj84mRPFpfno0jHP1G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Cornwell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Aaron Able / Troll', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Matthew Cornwell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amber Abara', '/2ZLyhL4zvLzQMFvlYt86VWqYEhV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amber Abara');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Beach Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Amber Abara';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alessandro Folchitto', '/3BYhfB3ILTglv8B36FgBpClVo6R.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alessandro Folchitto');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Death Merc', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Alessandro Folchitto';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cynthia Barrett', '/tWd0Yr3uIkHxnJevJ5gFtsKp0LU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cynthia Barrett');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'MORA Surveillance Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Cynthia Barrett';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'J.R. Adduci', '/spkjjqSl1aFv107nuuUdKHcQFev.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'J.R. Adduci');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'MORA Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'J.R. Adduci';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brandon M. Shaw', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brandon M. Shaw');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'MORA Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Brandon M. Shaw';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gabriel ''G-Rod'' Rodriguez', '/t7GOyMDDMYWRwnQveCEUFDSapk7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gabriel ''G-Rod'' Rodriguez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Claus Yule Lad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Gabriel ''G-Rod'' Rodriguez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kia Shine', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kia Shine');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yule Lad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Kia Shine';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adam Boyer', '/lxqVHfVnMxExCSzJLal5gFHeVW8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adam Boyer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yule Lad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Adam Boyer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Tourek', '/iUGIH6gdNdKfmkDHd9mEuRaiw6t.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Tourek');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yule Lad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Michael Tourek';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Derek Russo', '/5x5b61WVyydJV9qHPVIBzefCsMf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Derek Russo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yule Lad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Derek Russo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Cheek', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Cheek');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ELF Welcoming Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'James Cheek';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Regina Ting Chen', '/7Lqwq6UYbZd7XyMujUKUVUHGSIb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Regina Ting Chen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ELF Agent Ginerva', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Regina Ting Chen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Reinaldo Faberlle', '/vVsxgN6hsbqeXMk9Gn0VvNbTSy2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Reinaldo Faberlle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ELF Agent Garcia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Reinaldo Faberlle';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Philip Fornah', '/mH6UjRLpoHkwwDzCMkzXfyFAlje.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Philip Fornah');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ELF Agent Fred', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Philip Fornah';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kenny Waymack Jr.', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kenny Waymack Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ELF Agent Kenny', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Kenny Waymack Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gissette E. Valentin', '/7xEll2mKg4oFBnJi55WYrmK5QSX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gissette E. Valentin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'ELF Agent Barskova', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Gissette E. Valentin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'CJ Padera', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'CJ Padera');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Monitor ELF Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'CJ Padera';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Darryl W. Handy', '/wJEpBkl0PPSntF0U7z1iBpggGAB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Darryl W. Handy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Air Force General', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Darryl W. Handy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martinez', '/AggKedZFJVJQTOH8muNO0Cd1xVi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martinez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Air Traffic Controller', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Martinez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Drew Ater', '/gVfWoGPrkNd4G1rxVUkJSBzVQHy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Drew Ater');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'F22 Raptor Pilot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Drew Ater';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pilot Bunch', '/uSoUAVnJtIv214gWJ0FRHySPwKp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pilot Bunch');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Candy Cane Thief', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Pilot Bunch';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Makana David', '/syUAAdcYdvFhsoc9Me6IoNdtwn9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Makana David');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barista', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Makana David';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Shane Costa', '/pYxU8bwM2fFHZbWXcPW3kK1h4uj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Shane Costa');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Churro Vendor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Shane Costa';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Greg Clarkson', '/hZhh6HICNVg4DsTQYdaMDpDZgnS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Greg Clarkson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hot Dog Vendor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 845781 AND a.name = 'Greg Clarkson';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Jake Kasdan', '/pIpY7zcBSpq6Z3Q1eADPtKDB043.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Jake Kasdan');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 845781 AND d.name = 'Jake Kasdan';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/ryYEpxWiZFmJJZUyvQCBvM5UOCU.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 845781;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/rOmUuQEZfPXglwFs5ELLLUDKodL.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 845781;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (945961, '에이리언: 로물루스', '2024-08-13', '비명마저 집어삼킬 극강의 공포', '2142년, 부모 세대가 맞닥뜨렸던 암울한 미래를 피하려는 청년들이 더 나은 삶을 찾기 위해 식민지를 떠날 계획을 세운다. 하지만 버려진 우주 기지 로물루스에 도착한 이들은 악몽과도 같은 에이리언의 무자비한 공격에 쫓기기 시작한다. 그 누구도 그들의 절규를 들을 수 없는 우주 한가운데, 생존을 위한 치열한 사투를 벌여야 하는데...', 119, '15', 'RELEASED', 1562.503000, 7.300000, 350752564, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 945961 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 945961 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케일리 스패니', '/nquUc6o2dK4Pg4zjvl2HmZOfiRS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케일리 스패니');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rain', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = '케일리 스패니';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이비드 존슨', '/nIT9PmgMHHwSYG39hjqL6vv3TWU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이비드 존슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Andy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = '데이비드 존슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Archie Renaux', '/uTd18t2VJovN2jSJyhuG8Yy3PV6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Archie Renaux');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tyler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Archie Renaux';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '이사벨라 메르세드', '/zfLScjMHJWkGMzvDZmb1tpsBHuk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '이사벨라 메르세드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kay', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = '이사벨라 메르세드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Spike Fearn', '/o1WcXkDdlN5wdL5WIuGXNpNouZ9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Spike Fearn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bjorn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Spike Fearn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aileen Wu', '/gjW0BFkxowjzOVFyVMfgpCTkyl0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aileen Wu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Navarro', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Aileen Wu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rosie Ede', '/h6HTwvixLAq9HMGVyoAlWwahuA0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rosie Ede');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'WY Officer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Rosie Ede';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Soma Simon', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Soma Simon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '10-Year-Old Punk #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Soma Simon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bence Okeke', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bence Okeke');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '10-Year-Old Punk #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Bence Okeke';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Viktor Orizu', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Viktor Orizu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '10-Year-Old Punk #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Viktor Orizu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robert Bobroczkyi', '/3SK7NuuBKR5PSJwsQ7HO4qHIM9C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robert Bobroczkyi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Offspring', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Robert Bobroczkyi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Trevor Newlin', '/quLkv08KxRXlAdApnpgmmtP73eQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Trevor Newlin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Xenomorph', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Trevor Newlin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Annemarie Griggs', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Annemarie Griggs');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'MU/TH/UR (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Annemarie Griggs';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Betts', '/wKtPsR1At1EmJeYenSjRm4BeIiQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Betts');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rook (Facial and Vocal Performance)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 945961 AND a.name = 'Daniel Betts';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '페데 알바레즈', '/f8KjBkmqAyNGTUkZh1oYIURP4id.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '페데 알바레즈');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 945961 AND d.name = '페데 알바레즈';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/AmWTYg3RCMv7fbQxwCqrxiaUhkc.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 945961;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/6vn6K9oX82i6E86ZiHVxqVEMQqP.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 945961;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1051896, '아카디안', '2024-04-12', '', '문명의 대부분이 파괴된 지구, 쌍둥이 형제들이 정체를 알 수 없는 괴물들로부터 아버지 ‘폴’과 이웃들을 지키기 위해 나서며 벌어지는 액션 스릴러', 92, '19', 'RELEASED', 1488.301000, 6.049000, 859453, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1051896 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1051896 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1051896 AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1051896 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '니콜라스 케이지', '/iqqNNhPMrd1jMPWNiVACURaDwii.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '니콜라스 케이지');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paul', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = '니콜라스 케이지';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제이든 리버허', '/Anx0n2hsJnHKAnMQP7ptOTfTxTI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제이든 리버허');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joseph', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = '제이든 리버허';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maxwell Jenkins', '/1fLzPGmVqAuktboeneJ3Ru1ab2v.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maxwell Jenkins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thomas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = 'Maxwell Jenkins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sadie Soverall', '/wGQgTJztCKwCZA79JgvZMQhhFFs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sadie Soverall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Charlotte', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = 'Sadie Soverall';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Coughlan', '/oTcw7AFY52UYyIjPLp9ZjySwivy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Coughlan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Rose', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = 'Samantha Coughlan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joel Gillman', '/gc2A2XYhQRwK0il81rFBvUpnT7d.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joel Gillman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hobson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = 'Joel Gillman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joe Dixon', '/vUJuFAxmmm3awOSDHQF8kuDjr11.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joe Dixon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Rose', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = 'Joe Dixon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daire McMahon', '/jN9I0jErNNTR8ury8YVgej7Z9wn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daire McMahon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Militant Farmer (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1051896 AND a.name = 'Daire McMahon';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Benjamin Brewer', '/vr0ZjHGlSg5mR1cs7yC26lRdIAP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Benjamin Brewer');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1051896 AND d.name = 'Benjamin Brewer';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/spWV1eRzlDxvai8LbxwAWR0Vst4.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1051896;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/9s9o9RT9Yj6nDuRJjnJm78WFoFl.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1051896;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1084736, '몬테크리스토 백작', '2024-06-28', '', '에드먼드 단테스는  음모에 빠져 결혼식 날 자신이 저지르지도 않은 범죄로 체포된다. 샤토 디프에서 14년 동안의 수감 생활을 끝으로 탈옥에 성공하고  꿈에 그리던 부자가 된다. 단테스는 몬테크리스토 백작으로 신분을 위장하고 세 남자에게 복수를 실행에 옮긴다.', 178, '', 'RELEASED', 1040.657000, 8.300000, 73924182, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1084736 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1084736 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1084736 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1084736 AND g.name = '역사';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1084736 AND g.name = '로맨스';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1084736 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '피에르 니네이', '/aMsGsnRPet7pZ2ppAxaRdBz4yGU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '피에르 니네이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Edmond Dantès / le Comte de Monte-Cristo / Lord Halifax', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = '피에르 니네이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bastien Bouillon', '/NNaftwlsU8rvBY4e4LX25ZTKgB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bastien Bouillon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fernand de Morcerf', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Bastien Bouillon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아나이스 드무스티에', '/kObYOu3UYkNcQGg1gnl4xitwhNc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아나이스 드무스티에');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mercédès Herrera', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = '아나이스 드무스티에';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아나마리아 바르톨로메이', '/oU56hySuXi4Q51gX6nPcplWybQo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아나마리아 바르톨로메이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Haydée', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = '아나마리아 바르톨로메이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laurent Lafitte', '/lpF5sb1aEMEmxxfZT3u8PWGEipC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laurent Lafitte');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gérard de Villefort', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Laurent Lafitte';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pierfrancesco Favino', '/hedzgTKFKrSleWvLkBlANng8w4T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pierfrancesco Favino');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Abbé Faria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Pierfrancesco Favino';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Patrick Mille', '/vxpQlYMyZNmDPD6JQrcnfRPdNI2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Patrick Mille');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Danglars', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Patrick Mille';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vassili Schneider', '/hYy6OgeSjCrcZXNnrb2ITlbufiU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vassili Schneider');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Albert de Morcerf', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Vassili Schneider';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Julien de Saint Jean', '/7LgzmUUyAPSRhAT5a5v7l6aGviH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Julien de Saint Jean');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Andrea', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Julien de Saint Jean';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Julie de Bona', '/t4lIM96f4CAKpT8ouk5j4VlQgCU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Julie de Bona');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Julie de Bona';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adèle Simphal', '/91dmJiu5XxIQ4TO8CJMsi4YjOpE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adèle Simphal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Angèle', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Adèle Simphal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stéphane Varupenne', '/njRd1n3QR1yaFAIYeVzkXJ84WjT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stéphane Varupenne');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Caderousse', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Stéphane Varupenne';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marie Narbonne', '/f90tq4Bb9HpF5fhXKaPaCuJgmjW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marie Narbonne');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eugénie Danglars', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Marie Narbonne';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bruno Raffaelli', '/1yMD6BTvxSk0CjZ4jUr3SZMEkJQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bruno Raffaelli');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Morrel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Bruno Raffaelli';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Abde Maziane', '/jtqrhyhWfLSPkQLryTUeDlYpDVY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Abde Maziane');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jacopo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Abde Maziane';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amaya Ducellier', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amaya Ducellier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Haydée à 10 ans', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Amaya Ducellier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Oscar Lesage', '/6yd3eODeuk0nuiFYbmLzpDTL5k2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Oscar Lesage');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Le témoin du duel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Oscar Lesage';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joachim Simon', '/bHgSFlWcFSM0zxfu4NND8XPkL14.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joachim Simon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maximilien Morrel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Joachim Simon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Françoise Gazio', '/mwDGa5SU9BXMPWpZocVW3lXvouQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Françoise Gazio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yvonne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Françoise Gazio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Axel Baille', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Axel Baille');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'le serviteur du baron Danglars', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Axel Baille';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lily Dupont', '/aky0uwkzkyhbiYZlnKAZTrk0Fuq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lily Dupont');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Suzanne, l''amie d''Eugénie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Lily Dupont';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olivier Le Montagner', '/9PGbEFcB9FYen9MPXGi5SErB6qE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olivier Le Montagner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'le gardien du château d''If', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Olivier Le Montagner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jérémie Covillault', '/57NN05pa5l15xU7oJuFmFDWBuBC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jérémie Covillault');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Antoine, le gardien de prison', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Jérémie Covillault';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bernard Blancan', '/qQ7cdoyKCVrr8nSOE3Wc1NQp3AQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bernard Blancan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Louis Dantès, père d''Edmond', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Bernard Blancan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Graziella Delerm', '/u0A99rm2Tkc68B4lrVu64sIogJK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Graziella Delerm');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mme de Morcerf', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Graziella Delerm';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Xavier de Guillebon', '/nJodWtr4S6Gzo8XdvE9EUzFN2a9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Xavier de Guillebon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'M. de Morcerf', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Xavier de Guillebon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Clémentine Baert', '/8i3OIMM7fKJGByNeYzOKktzF7dp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clémentine Baert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mme de Villefort', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Clémentine Baert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Florence Muller', '/6DAKS8xAIgVOE831jyTbzhhpigV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Florence Muller');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mme Herrera', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Florence Muller';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Serge Bagdassarian', '/sXXnFr4TD8NgQtYuWAUdXQ1MpM2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Serge Bagdassarian');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'un juge', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Serge Bagdassarian';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jean-Louis Tribes', '/6xsrYJr9jigT29dRtPW9OvpwnoW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jean-Louis Tribes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'le curé', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Jean-Louis Tribes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laurent Dassault', '/umTQYXgALO3IceDlHUeEqRFRjqB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laurent Dassault');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'un convive du repas chez les Morcef', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1084736 AND a.name = 'Laurent Dassault';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Alexandre de La Patellière', '/er7ZbU5inozZfFmvpwswjujxBos.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Alexandre de La Patellière');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1084736 AND d.name = 'Alexandre de La Patellière';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Matthieu Delaporte', '/ofOMIBoC3FyRgfPRWhQxzJMCeLy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Matthieu Delaporte');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1084736 AND d.name = 'Matthieu Delaporte';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/4MlHj9EWOFIDoa4uXwcQhnf66w5.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1084736;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/llIXQAndg5kB6SWlp6ouUdO7Zxd.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1084736;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (889737, '조커: 폴리 아 되', '2024-10-01', '온 세상이 바로 무대', '2년 전, 세상을 뒤흔들며 고담시 아이콘으로 자리한 아서 플렉은 아캄 수용소에 갇혀 최종 재판을 앞둔 무기력한 삶을 살아간다. 그러던 어느 날, 수용소에서 운명적으로 만난 리 퀸젤은 아서의 삶을 다시 뒤바꾸며 그의 마음 속에 잠들어 있던 조커를 깨우고 리 역시 각성하며 자신을 할리 퀸이라 지칭하며 서로에게 깊이 빠져든다. 무고한 시민을 죽인 죄로 재판에 오르게 된 아서. 그는 최후의 심판대에서 할리 퀸과 함께 자신, 조커의 이야기를 시작하는데…', 138, '15', 'RELEASED', 1159.375000, 5.600000, 200714058, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 889737 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 889737 AND g.name = '범죄';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 889737 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '호아킨 피닉스', '/u38k3hQBDwNX0VA22aQceDp9Iyv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '호아킨 피닉스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arthur Fleck', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '호아킨 피닉스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레이디 가가', '/8BEujpdfDScHepZ3j9Kq2SObhE4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레이디 가가');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lee Quinzel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '레이디 가가';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '브렌던 글리슨', '/dTS2y7FLsnrskf0tPb8f9H7KAP3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '브렌던 글리슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jackie Sullivan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '브렌던 글리슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '캐서린 키너', '/n4CTwGszs6cwS1wJRlDQ5Mlh7Ex.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '캐서린 키너');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maryanne Stewart', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '캐서린 키너';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '재지 비츠', '/ijrT4pvALvxU0gphea4YxDnDh6e.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '재지 비츠');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sophie Dumond', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '재지 비츠';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티브 쿠건', '/tT7OXc2qA6hlREHXdwGLp0XihzA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티브 쿠건');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paddy Meyers', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '스티브 쿠건';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Harry Lawtey', '/l2qFs3TntkZD0G3zFEd1o2DXSWX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Harry Lawtey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Harvey Dent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Harry Lawtey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리 길', '/bn9h4ovCuMj01OybjIoTrakOL2z.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리 길');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gary Puddles', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '리 길';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '켄 렁', '/hpatUP6u74gkpDRmn9voNY9V43O.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '켄 렁');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Victor Liu', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = '켄 렁';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jacob Lofland', '/hlDVsEhgvNX5xnAcqX3HaBXAgNS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jacob Lofland');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ricky Meline', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Jacob Lofland';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sharon Washington', '/uUTYgfcmJUfz3cm7cEqiXlHPRAv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sharon Washington');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Debra Kane', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Sharon Washington';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Troy Fromin', '/6MYEY1bSu0A48vx6dfwXLT2OWy4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Troy Fromin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'E Ward Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Troy Fromin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bill Smitrovich', '/yzZUYnAdX0MMA8eZMTVsXufRCfU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bill Smitrovich');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Judge Herman Rothwax', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Bill Smitrovich';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John Lacy', '/9v2fOfR5UccdFbOuhn7UYmf4cRE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Lacy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arkham Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'John Lacy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gattlin Griffith', '/esMHJA8lP8y60AqJZH9JJBMIRIz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gattlin Griffith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Masked Joker Driver', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Gattlin Griffith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tim Dillon', '/qEAS7a0ZjJhiUysuinZ0aBQABvX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tim Dillon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arkham Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Tim Dillon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mike Houston', '/slFvhF8uFXfnrquxVbcbx3lFSRz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mike Houston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Mike Houston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'G.L. McQueary', '/n9tjsEiZMYf2RKykhO0f0EwnCYE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'G.L. McQueary');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Head Bailiff', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'G.L. McQueary';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jimmy Smagula', '/eJCPG4KqGQezTNdN4LLzFjHPHOz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jimmy Smagula');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Jimmy Smagula';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brian Donahue', '/ajWAfpzRuc9jI43kSWZjQ1s5mFf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brian Donahue');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Brian Donahue';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alfred Rubin Thompson', '/qhyDts6pX5U2Q4LHRowpd6UFZn9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alfred Rubin Thompson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ernie Bullock', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Alfred Rubin Thompson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robert Loftus', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robert Loftus');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Robert Loftus';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Carson Higgins', '/cMu3ITaS6Cen7arcxJCQV7orXOz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Carson Higgins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Junior Associate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Carson Higgins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ben van Diepen', '/sR6QWwiu7CzPafuhXmtLWnCRbc7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ben van Diepen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Music Class Singer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Ben van Diepen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Casey Burke', '/w5cmY7hRYruMvPNdhzQ18MhVHaa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Casey Burke');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joker Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Casey Burke';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Connor Storrie', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Connor Storrie');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Connor Storrie';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gregg Daniel', '/7xdJpmeCUod0OEx5VlGpNuWQG7v.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gregg Daniel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Music Teacher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Gregg Daniel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mac Brandt', '/u2zRIywRVcih7LsZIsybmbzwmJW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mac Brandt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arkham Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Mac Brandt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'George Carroll', '/dtPCKR8BWu5Q7CnNRdHWY5dB7Jt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'George Carroll');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arkham Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'George Carroll';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Wayne Dehart', '/lvSDWQ0TpkhsTmk9obaZLIxU0j2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Wayne Dehart');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'E Ward Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Wayne Dehart';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ajgie Kirkland', '/7s8WbuUjBq9reKYHlxnfXWpKs0d.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ajgie Kirkland');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'E Ward Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Ajgie Kirkland';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Terrance T.P. Polite', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Terrance T.P. Polite');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'E Ward Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Terrance T.P. Polite';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jimmy Walker Jr.', '/ucTGwh5gTwU3063omYa6FXtSZkC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jimmy Walker Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'E Ward Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Jimmy Walker Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'June Carryl', '/7p0lxKz4KGfUPc8r5q5j7N8vy5N.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'June Carryl');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Louise Beatty', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'June Carryl';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Don McManus', '/rGdpdQ0DDVDX4FlQzrdFGcOlRGB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Don McManus');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paddy Meyers'' Producer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Don McManus';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Angela D. Watson', '/zVTEtQg5wv5tOwf6tECtnjvAHTQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Angela D. Watson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jury Foreman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Angela D. Watson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Murphy Guyer', '/6axiNcYIZmaeRKyfCm3xBHC7KQL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Murphy Guyer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'White Chapel Minister', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Murphy Guyer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hudson Oz', '/vpjvHMpOY1wStHDxhfxZugDylI2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hudson Oz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joker Doppelganger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Hudson Oz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ray Lykins', '/9cJnf225TyU1uMPkgUemNgtxvgx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ray Lykins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victim''s Dad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Ray Lykins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Will Ropp', '/u1CNEIr937s8GT6ThhYs6n5uq3V.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Will Ropp');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joker Fan #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Will Ropp';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ashton Moio', '/33quyMobSxu2HNFE4HHT5w5RTLW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ashton Moio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joker Fan #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Ashton Moio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emilio Rojas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emilio Rojas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joker Fan #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Emilio Rojas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joe Spinney', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joe Spinney');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Police Escort', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Joe Spinney';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Richard Busser', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Richard Busser');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Richard Busser';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jess King', '/o7abcDW4IN0SOV2eYVcCtd1mPLM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jess King');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Jess King';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stephen Stanton', '/uaoZXILATHT27HUnBh8Q345glc6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stephen Stanton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stan L. Brooks (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Stephen Stanton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martin Kildare', '/7RnlNxJcvlJO890bjsx5KrEEYp6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martin Kildare');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'News Anchor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Martin Kildare';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laurie Dawn', '/bT0NbqkqYxFmOInIONkZq3Fy4tV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laurie Dawn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Laurie Dawn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven X. Greenfield', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven X. Greenfield');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Steven X. Greenfield';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dominiqué Williams-Blair', '/4wpaPLk211roJyMBPubMSkR6y1I.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dominiqué Williams-Blair');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Dominiqué Williams-Blair';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Barry Bonder', '/uN7M07Vsqam2i0iNIgUqowe433p.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Barry Bonder');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Barry Bonder';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kaylah Sharve'' Baker', '/eUQEwtnjpz7jqe0egKz4pW4Afx6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kaylah Sharve'' Baker');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Back-up Singer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Kaylah Sharve'' Baker';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ashley Levin', '/vkknpHBqfqfvwSBEnknmvoc1Hpl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ashley Levin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Back-up Singer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Ashley Levin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Celeste Butler', '/mjpAabtfOPF5JKzBv2bCfbhEvbd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Celeste Butler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Back-up Singer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Celeste Butler';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alex Wesley Smith', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alex Wesley Smith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Music Room Pianist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Alex Wesley Smith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Toney Wilson', '/oEv8raSjZzoSzTXSSjMngdI2mpt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Toney Wilson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'E Ward Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Toney Wilson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nick Cave', '/rPn6Y3j3IOHRlTxCW2wHAyU6TYt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nick Cave');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joker / Shadow (voice) (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 889737 AND a.name = 'Nick Cave';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '토드 필립스', '/A6FPht87DiqXzp456WjakLi2AtP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '토드 필립스');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 889737 AND d.name = '토드 필립스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/dA1TGJPTVjlqPc8PiEE2PfvFBUp.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 889737;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/uGmYqxh8flqkudioyFtD7IJSHxK.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 889737;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (335983, '베놈', '2018-09-28', '영웅인가, 악당인가', '진실을 위해서라면 몸을 사리지 않고 사회의 부조리를 취재하는 정의로운 열혈 기자 에디 브록. 거대 기업 라이프 파운데이션의 생체실험에 의혹을 품고 뒤를 쫓던 그는 이들의 사무실에 잠입했다가 실험실에서 외계 생물체 심비오트의 기습 공격을 받게 된다. 심비오트가 숙주의 몸과 정신을 지배할 때 능력을 발휘하는 베놈은 에디의 몸에 기생하며 갖가지 소동을 일으킨다. 한편 비밀리에 인간과 심비오트를 결합해 새로운 생명체를 만들려는 시도를 계속하던 라이프 파운데이션의 회장 드레이크 또한 심비오트의 숙주가 된다.', 112, '15', 'RELEASED', 909.623000, 6.835000, 856085151, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 335983 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 335983 AND g.name = '액션';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '톰 하디', '/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 하디');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie Brock / Venom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '톰 하디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '미셸 윌리엄스', '/jn3BVMVbIptz2gc6Fhxo1qwJVvW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '미셸 윌리엄스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anne Weying', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '미셸 윌리엄스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리즈 아메드', '/1uP9RaX7BGVx7XGTEmwObBJJzsC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리즈 아메드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Carlton Drake / Riot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '리즈 아메드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Scott Haze', '/6cd3Jt8Vo52j8cRKbNf1j7cERhs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Scott Haze');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Security Chief Roland Treece', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Scott Haze';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리드 스콧', '/kBAeDUDA7XJRXFLGNALlpE5d3lA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리드 스콧');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Dan Lewis', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '리드 스콧';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제니 슬레이트', '/iNpXig5Djkh5moYG4TCekIATs5B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제니 슬레이트');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Dora Skirth', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '제니 슬레이트';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Melora Walters', '/FSxiDBekrKgmzow1j3UhmNHOhI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Melora Walters');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Homeless Woman Maria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Melora Walters';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '우디 해럴슨', '/x9jcwNJxpbqx3YARrifLR5xU4Ty.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '우디 해럴슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cletus Kasady / Carnage', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '우디 해럴슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peggy Lu', '/ng5eaDcOf9kSwIYGNmwF9wEfIHp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peggy Lu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Chen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Peggy Lu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Malcolm C. Murray', '/1TkiBdgPv0AmKFXyB1dINzd4GJ8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Malcolm C. Murray');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lewis Donate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Malcolm C. Murray';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sope Aluko', '/dNfAM8jNgwa1693nuplfjp70Ls4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sope Aluko');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Collins', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Sope Aluko';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Wayne Pére', '/lwXHBf6Iy627B7wLgzIy43NKzRi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Wayne Pére');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Emerson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Wayne Pére';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michelle Lee', '/r6QzFK8IBxO1Kp3zm3GJ3FUuwwR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michelle Lee');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Malaysia EMT / Riot Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Michelle Lee';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kurt Yue', '/kPy0d5uUNiJJB18T55IdE01Ruru.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kurt Yue');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mission Control Translator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Kurt Yue';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chris O''Hara', '/fld3KCrYr9IOTrAiKYPXgybgk1d.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chris O''Hara');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Astronaut J. J. Jameson III', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Chris O''Hara';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emilio Rivera', '/pHgPJSoZVgmt4FQ8zyMVqwovpRb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emilio Rivera');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lobby Guard Richard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Emilio Rivera';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amelia Young', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amelia Young');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Allie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Amelia Young';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ariadne Joseph', '/cEyHPtyvTrKzGwqNheKfj8YYzBl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ariadne Joseph');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie''s TV Producer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Ariadne Joseph';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Deen Brooksher', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Deen Brooksher');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Drake Interview Guard #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Deen Brooksher';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Jones', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Jones');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Drake Interview Guard #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'David Jones';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '로저 유언', '/jHdxbT6n3ToYKw0DVFIUkva86SO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로저 유언');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Village Eel Shop Owner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '로저 유언';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Woon Young Park', '/11WapXwgVTJbd1WPwb73fw4n9ZK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Woon Young Park');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Malaysia Village Tough #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Woon Young Park';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Patrick Chundah Chu', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Patrick Chundah Chu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Malaysia Village Tough #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Patrick Chundah Chu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vickie Eng', '/av58UfVqzkkRNOZ6GIcWdcD8ugl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vickie Eng');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elderly Village Woman / Riot Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Vickie Eng';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mac Brandt', '/u2zRIywRVcih7LsZIsybmbzwmJW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mac Brandt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jack the Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Mac Brandt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nick Thune', '/aE8WEoNAs2PtgUzF6AcGodwLQvy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nick Thune');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Beardo at Bar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Nick Thune';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Dennis Hill', '/ioPFULfowJ5vjPc8VLU6tUovVTJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Dennis Hill');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter on TV', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Michael Dennis Hill';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sam Medina', '/9xDO3sxBcO3tsDXknlKJuepeFwl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sam Medina');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shakedown Thug', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Sam Medina';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Scott Deckert', '/7rBoHozyT5q2TEmrT0UP6jPVlvO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Scott Deckert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Noisy Neighbor Ziggy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Scott Deckert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lauren Richards', '/byOHRkJOzVao18ZugZyB6jZmkTo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lauren Richards');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ziggy''s Girlfriend', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Lauren Richards';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jared Bankens', '/6Wr4uihYoP6H7MBXY3EsAjOPthR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jared Bankens');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Isaac / Blue Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Jared Bankens';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lucas Fleischer', '/4UdPIB1rbdlIvrmEnYbhu1ZObKF.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lucas Fleischer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guard at Gate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Lucas Fleischer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Burgess', '/m6C4IgWPAd8kK1khGiKL2Njs0c4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Burgess');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Flight Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Michael Burgess';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Diesel Madkins', '/udC5jsf8tspBE9KHXXvTfPOtgtF.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Diesel Madkins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lab Security Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Diesel Madkins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Otis Winston', '/sLiGyvLoPmdfaBLM2jyyt8YYcik.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Otis Winston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chasing Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Otis Winston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Zeva DuVall', '/12ZjH4SbeTY7rt2Nk1zaASsDGx9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Zeva DuVall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Girl / Riot Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Zeva DuVall';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Selena Anduze', '/15m6yIUm9NxFIwkVLR92Thri7nf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Selena Anduze');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bistro Manager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Selena Anduze';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brittany L. Smith', '/pBDRJzP24M2zDXIFPFL2abekBsq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brittany L. Smith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bistro Hostess', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Brittany L. Smith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jordan Foster', '/dYN242LNzfZjDMPq8Eq4KqEgFW0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jordan Foster');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Waiter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Jordan Foster';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jane McNeill', '/A5fLMhpA4ytrDZk4zeRmN9NVrUX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jane McNeill');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diner #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Jane McNeill';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Victor McCay', '/5K8BfMu5WFZ64slood7Pia5t1QS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Victor McCay');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diner #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Victor McCay';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elizabeth Becka', '/1Ew2isbKKLdnK3DvKX01QELrgET.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elizabeth Becka');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diner #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Elizabeth Becka';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ron Prather', '/dta9F4hub2PypjoMB9ITAEfcvev.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ron Prather');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diner #4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Ron Prather';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marcia White', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marcia White');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diner #5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Marcia White';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Javier Vazquez Jr.', '/cJhIiKGTppDK3zSbQxq7e03iP0o.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Javier Vazquez Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'MRI Tech', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Javier Vazquez Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ellen Gerstein', '/yHd7XL2otNcIdV5FrpL1bxOq8CO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ellen Gerstein');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hospital Lady with Dog / Mrs. Manfredi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Ellen Gerstein';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martin Bats Bradford', '/AdvVKzkT8dtNoRPm5i1Q7UvUriN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martin Bats Bradford');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jacob / Blue Host', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Martin Bats Bradford';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Teuchert', '/2OgLpVtARcA2P7RW8dGIvq7xey1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Teuchert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stoner Dude #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Steven Teuchert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Al-Jaleel Knox', '/x7px9KqKfgAuZVLeLEqbGjAjL9C.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Al-Jaleel Knox');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stoner Dude #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Al-Jaleel Knox';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brandon Morales', '/ei98nkcYPPRSQz6hb55aR8nqroh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brandon Morales');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Crowd Control Officer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Brandon Morales';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Cornwell', '/6j1squGcSCj84mRPFpfno0jHP1G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Cornwell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ops Director', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Matthew Cornwell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Fleischer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Fleischer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Flight Trajectory Specialist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'David Fleischer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'DJames Jones', '/aEAySdhWNvNlzFKsLopQV6bz2rw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'DJames Jones');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'L. F. Security Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'DJames Jones';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Angela Davis', '/wgVbQQMJywbIhVIOZ3fGYb3tg9w.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Angela Davis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Evacuating Scientist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Angela Davis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스탠 리', '/kKeyWoFtTqOPsbmwylNHmuB3En9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스탠 리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dapper Dog Walker', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '스탠 리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Wade Williams', '/hXb5ZzrjLnu9dcYaW1kAy9i5Luw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Wade Williams');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Prison Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Wade Williams';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '론 시퍼스 존스', '/lT5Jl1jgZVPWZdEeFHGN1G0Yc9A.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '론 시퍼스 존스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jack', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '론 시퍼스 존스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christian Convery', '/c1l5tNjmxzDAIaTHvzEfooUsAf8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christian Convery');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joey - 8 Year Old Boy (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Christian Convery';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Boston Rush Freeman', '/t7P2EYz60wRk1hx9wFBMSBL4LMA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Boston Rush Freeman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trolly Teen #1 (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = 'Boston Rush Freeman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '셔믹 무어', '/ovUKfVOwJ7CadEHaG3NDsfA5xRq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '셔믹 무어');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Miles Morales / Spider-Man (voice) (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '셔믹 무어';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제이크 존슨', '/3UNfW2qZgRkW81neNVfQvaRC92K.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제이크 존슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Peter Parker / Spider-Man (voice) (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 335983 AND a.name = '제이크 존슨';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '루빈 플라이셔', '/3JLxOPFTLigSy8FjFjDyMwD9GIp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '루빈 플라이셔');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 335983 AND d.name = '루빈 플라이셔';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/x4ojC59pYfPlAP4mmy2LSkCCuK2.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 335983;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 335983;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1116490, '캐시 아웃', '2024-04-26', '완벽한 작전은 사라졌다. 지금부터 플랜 B가 시작된다!', '전설적인 강도단의 보스 ‘메이슨’(존 트라볼타) 실패로 끝난 작전 이후 은퇴하고 잠적했던 그가 옛 팀원들의 다급한 요청으로 은행 강도 현장에 도착한다.  하지만 현장은 곧 치밀한 작전 따윈 사라지고 예상치 못한 FBI 협상가까지 등장하며 엉망이 되어버린다.  ‘메이슨’은 이제 FBI에 맞서 팀원들을 지키고 인생 마지막 한탕을 성공시키기 위해 완벽한 플랜 B를 설계하기 시작하는데…', 90, '12', 'RELEASED', 1155.410000, 6.200000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1116490 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1116490 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '존 트래볼타', '/eVWcevrvGLLqt9gkDMruqgLJPsp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 트래볼타');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mason Goddard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = '존 트래볼타';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스틴 데이비스', '/61TjappibaZ1i8pEFlqwK2yrR2W.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스틴 데이비스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Amelia Decker', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = '크리스틴 데이비스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루카스 하스', '/6LNGu3o2aBiYNTDkbXMDIGyQtBh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루카스 하스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shawn Goddard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = '루카스 하스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '퀘이보', '/xnNpJvPluhit6LFxLEFlbZwHtoJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '퀘이보');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anton', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = '퀘이보';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '노엘 구글리에미', '/26khzGvkwfTdR3f6rNAtQ39Z8OF.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '노엘 구글리에미');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vernon Richter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = '노엘 구글리에미';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Noel Gugliemi', '/8jujXofjpSroMQ1R2JLB0GWIPor.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Noel Gugliemi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hector', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Noel Gugliemi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Louis Rivas', '/iwzU845PyJaXqBwPvudFPGwTAFR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Louis Rivas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chaz Antonelli', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Daniel Louis Rivas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Natali Yura', '/hu0yDZwdHZyv24BAyJzrfq2hjPr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Natali Yura');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Link', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Natali Yura';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Victorya Brandart', '/e1sHZQwuQyQmfR1Hey8sSeub1nf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Victorya Brandart');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jennifer Tish', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Victorya Brandart';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jake Ellenz', '/oJmJcPW3ixWTs67bVzWl73wRt5T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jake Ellenz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'FBI Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Jake Ellenz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John Kinsey', '/dDSO6TorqFuRI1iipnlGuE870vv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Kinsey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'John Kinsey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Demi Castro', '/ddUS8OUqbaeesEEsy1P0ezy3AqF.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Demi Castro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zade (as Demi Castro)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Demi Castro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Luis Da Silva Jr.', '/ajavEvDuNcinuw3BJ80OE0sEU5Q.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Luis Da Silva Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fernando', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Luis Da Silva Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt Gerald', '/k5iEsYWb1Prho4IO2xGTFaIwKu1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt Gerald');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Fabrizio', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Matt Gerald';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chris Lindsay', '/59izQfPuqRJ95NpwV8pz2vx3wlW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chris Lindsay');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Commander Cyrus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Chris Lindsay';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Korrina Rico', '/8YjcDzifQr6n00oLR0qtXv6vyxM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Korrina Rico');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Korrina Rico';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Swen Temmel', '/z6zLmf3PBsTGMU3RBnguAqfHUn3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Swen Temmel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Georgios Caras', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1116490 AND a.name = 'Swen Temmel';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '랜들 에멧', '/qkSvRlmJFSPl9Y1qMiOZyfP29mU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '랜들 에멧');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1116490 AND d.name = '랜들 에멧';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/4r77ZO9pKgQuW1GxjMrktyY8eUP.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1116490;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/6VoxDupaW2VXfLtJyeOoGCgXSjD.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1116490;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (519182, '슈퍼배드 4', '2024-06-20', '올여름은 우리가 씹어 먹는다!', '슈트-업 하고 악당 전담 처리반 AVL이 된 에이전트 미니언즈와 미니언즈 만큼 귀여운 그루 주니어가 태어나면서 더욱 완벽해진 그루 패밀리. 이들 앞에 과거 그루의 고등학교 동창이자 그에게 체포당했던 빌런 맥심이 등장하고, 오직 그루를 향한 복수심에 불타올라 탈옥까지 감행한 맥심은 그루 패밀리의 뒤를 바짝 추격하며 위협을 가하기 시작하는데... 과연 에이전트 미니언즈와 그루 패밀리는 맥심을 막아낼 수 있을까?', 94, 'ALL', 'RELEASED', 1026.242000, 7.100000, 953140610, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 519182 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 519182 AND g.name = '가족';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 519182 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 519182 AND g.name = '액션';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티브 카렐', '/1LQDqpcDQTtQb90o9vagbuCHueb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티브 카렐');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gru (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '스티브 카렐';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '크리스틴 위그', '/N517EQh7j4mNl3BStMmjMN6hId.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '크리스틴 위그');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucy (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '크리스틴 위그';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '윌 페럴', '/xYPM1OOLXZguj4FsgmOzTSUXaXd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '윌 페럴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maxime (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '윌 페럴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '소피아 베르가라', '/7VZL8Lupwf3rgNyc7DC3m0XNtvq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '소피아 베르가라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Valentina (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '소피아 베르가라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '미란다 코스그로브', '/qIGeoyXEVu1LxTH34TWx1YSHyQr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '미란다 코스그로브');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Margo (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '미란다 코스그로브';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dana Gaier', '/hw3Ou8cj22MLXl8QKrL8vcidcCB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dana Gaier');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Edith (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Dana Gaier';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Madison Polan', '/rFlA9iYyefyFTWv1YIMdMoUFgfZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Madison Polan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agnes (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Madison Polan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pierre Coffin', '/eAA9uWRqHlm1LT3nZfXb7UuPfVb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pierre Coffin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Minions (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Pierre Coffin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chris Renaud', '/sumBJgBqRkK4XEJ2JYXpad3MTJs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chris Renaud');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Principal Übelschlecht (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Chris Renaud';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티브 쿠건', '/tT7OXc2qA6hlREHXdwGLp0XihzA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티브 쿠건');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Silas (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '스티브 쿠건';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티븐 콜베어', '/zQ6pvfqIqYiV4TB7lDoaJL52H93.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티븐 콜베어');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Perry Prescott (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '스티븐 콜베어';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '클로이 파인먼', '/iSVuuIRcamYuwYfXwSKPGWSA0ay.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '클로이 파인먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Patsy Prescott (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '클로이 파인먼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조이 킹', '/td1mTuzaajIzN9EjK5Bd6ly6WBO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조이 킹');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Poppy Prescott (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '조이 킹';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laraine Newman', '/62i0sFf0IwmkQkBW9Osucgx8qGr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laraine Newman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Melora / Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Laraine Newman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '존 디마지오', '/qcbQe71nSlULDsP1OxTqltEKFbl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 디마지오');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bus Driver (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '존 디마지오';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '타라 스트롱', '/8Z86FfWbnUJnyFTcLa9MpVVFhMh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '타라 스트롱');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = '타라 스트롱';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Romesh Ranganathan', '/kZ4g2kvgx8MHKLEQ7DAQ07ta2Lz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Romesh Ranganathan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Romesh Ranganathan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brad Ableson', '/cOnT6KuNNjwXKmCNw5nmOFPsrsj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brad Ableson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Brad Ableson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Barbara Harris', '/d1BGeZT2b81Wa9gCOPdrXGWUtmR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Barbara Harris');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Barbara Harris';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eden Boulton', '/p6VnFY6NRyF1luVn4oSoob78Io3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eden Boulton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Eden Boulton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'JP Karliak', '/7Rc3n8KmKUaztqfsIpddO1a2ggn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'JP Karliak');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'JP Karliak';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cathy Cavadini', '/9sThx5Ajdy1aBJSppQDbTkmANlA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cathy Cavadini');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Cathy Cavadini';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Arif S. Kinchen', '/rY16iqdy5lJIyEMoL941NdzUlEr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Arif S. Kinchen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Arif S. Kinchen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Will Collyer', '/gxOV12lRnBh6FQUjOxtpRyo9cXx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Will Collyer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Will Collyer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jeremy Maxwell', '/haG5rF1ogYIsQpIpAQ74Q2P1ek0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jeremy Maxwell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Jeremy Maxwell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Abby Craden', '/vuRCNXWfreSJZQoiExxX3XHhRJK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Abby Craden');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Abby Craden';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ken Daurio', '/w2h65hO12TzEZmONJ3RB6DqcskJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ken Daurio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Ken Daurio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Khary Payton', '/4PgEGuAb2KkaRb7P9PdK40pPeVH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Khary Payton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Khary Payton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John DeMita', '/cIUd7zTcGzJ0CMSkL4SUOee3gME.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John DeMita');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'John DeMita';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aaron Fors', '/cZuAdf50vu237WYIKryYCLUDiD4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aaron Fors');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Aaron Fors';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Isaac Robinson-Smith', '/ceNxqevAX7c9uAzl8IthjG3slqy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Isaac Robinson-Smith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Isaac Robinson-Smith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Willow Geer', '/kreFbFc095mvIRI89FIHUlWOBuo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Willow Geer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Willow Geer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Isa Hall', '/cgiTK10YcnVTUKEeik4yHLEeuIW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Isa Hall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Isa Hall';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nisa Ward', '/pOZxSrdG6gSQoa33w8KseZws6aY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nisa Ward');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Nisa Ward';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aaron Hendry', '/lOA25S5b1fkBL6fnG3u33mFtTdE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aaron Hendry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Aaron Hendry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andreana Weiner', '/mGXqePKDzlVPiQ1D9iAPuBZp8Ss.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andreana Weiner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Andreana Weiner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Colette Whitaker', '/8ngAVxwb0WKvRII5lLat66IOlz2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Colette Whitaker');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 519182 AND a.name = 'Colette Whitaker';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Chris Renaud', '/sumBJgBqRkK4XEJ2JYXpad3MTJs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Chris Renaud');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 519182 AND d.name = 'Chris Renaud';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/5hl1PEpAvZ8Ok37kB7woIssHi3X.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 519182;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/lgkPzcOSnTvjeMnuFzozRO5HHw1.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 519182;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (580489, '베놈 2: 렛 데어 비 카니지', '2021-09-30', '히어로의 시대는 끝났다', '‘베놈''과 완벽한 파트너가 된 ‘에디 브록'' 앞에 ‘클리터스 캐서디''가 ‘카니지''로 등장, 앞으로 닥칠 대혼돈의 세상을 예고한다. 대혼돈의 시대가 시작되고, 악을 악으로 처단할 것인가?', 97, '15', 'RELEASED', 800.762000, 6.800000, 506863592, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 580489 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 580489 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 580489 AND g.name = '모험';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '톰 하디', '/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 하디');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie Brock / Venom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '톰 하디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '우디 해럴슨', '/x9jcwNJxpbqx3YARrifLR5xU4Ty.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '우디 해럴슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cletus Kasady / Carnage', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '우디 해럴슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '미셸 윌리엄스', '/jn3BVMVbIptz2gc6Fhxo1qwJVvW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '미셸 윌리엄스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anne Weying', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '미셸 윌리엄스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '나오미 해리스', '/41TVAcYqKKF7PGf3x7QfaLvkLSW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '나오미 해리스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Frances Louise Barrison / Shriek', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '나오미 해리스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리드 스콧', '/kBAeDUDA7XJRXFLGNALlpE5d3lA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리드 스콧');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Dan Lewis', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '리드 스콧';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스티븐 그레이엄', '/hRq4Rq8IbLL4nGCu11N5ePESdI6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스티븐 그레이엄');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Detective Mulligan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '스티븐 그레이엄';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peggy Lu', '/ng5eaDcOf9kSwIYGNmwF9wEfIHp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peggy Lu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. Chen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Peggy Lu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sian Webber', '/9YExcxouY26QQHzuH7jZ4qR2GXl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sian Webber');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Pazzo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Sian Webber';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michelle Greenidge', '/to5tGfkCVdVnl49vZXOUhbJkAxV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michelle Greenidge');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mugging Victim', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Michelle Greenidge';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rob Bowen', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rob Bowen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Beaten Mugger', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Rob Bowen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laurence Spellman', '/47xoUxleCv94VQnkzkAoa1xRS5Z.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laurence Spellman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Patient', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Laurence Spellman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Little Simz', '/5L3gQS6xKROcNnf5WEabDmzLIFn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Little Simz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Simz', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Little Simz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jack Bandeira', '/zv2g9aNQX8ZDxG3faqWQi4e3mE7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jack Bandeira');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Cletus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Jack Bandeira';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olumide Olorunfemi', '/i8VSGkFdQ0PC3OgCAyaiak8oK1A.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olumide Olorunfemi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Shirek', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Olumide Olorunfemi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Scroobius Pip', '/6wEJf3gs8JS6ATAVAZaH5YvGqpj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Scroobius Pip');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Siegfried', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Scroobius Pip';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amrou Al-Kadhi', '/wGr7Emb8ppfUThAc7rywI6wgfBJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amrou Al-Kadhi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Host Two', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Amrou Al-Kadhi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Beau Sargent', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Beau Sargent');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Host Three', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Beau Sargent';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brian Copeland', '/xD0G1ccbLRTHLlROotAL9Avc6kv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brian Copeland');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rodeo Beach Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Brian Copeland';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stewart Alexander', '/najx2f4DAKt7DtQkPEyNXJURyNe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stewart Alexander');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Warden', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Stewart Alexander';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sean Delaney', '/o5CKqXDL8D97kY7YWk8qHX7NZz7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sean Delaney');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Detective Mulligan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Sean Delaney';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ed Kear', '/jB1QY1DSN253bbtz51MHXEBj9O8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ed Kear');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reveler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Ed Kear';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emma Lau', '/1UrteYlI4kbwZv6aRufFvPNasz0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emma Lau');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reveler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Emma Lau';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Louis j Rhone', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Louis j Rhone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reveler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Louis j Rhone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christopher Godwin', '/yrhPkJY9oafkA5GipMZajVP17wH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christopher Godwin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Headmaster (1997)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Christopher Godwin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tiffanie Thomas', '/zXlpvr6UahhpbZEZaECxZA3Izv2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tiffanie Thomas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Quentin Tier Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Tiffanie Thomas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rocky Capella', '/b9kWmKUZjemfeRUZd5U4VcPhxOZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rocky Capella');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Valet Car Park', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Rocky Capella';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sam Robinson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sam Robinson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Quentin Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Sam Robinson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Greg Lockett', '/p2OeDF1ssTV4plTILk5O5pbevMJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Greg Lockett');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Francisco Police Department Officer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Greg Lockett';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sonny Ashbourne Serkis', '/kan4bPDdGFFmXAOeLsrK2nVCiQw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sonny Ashbourne Serkis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Plunger Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Sonny Ashbourne Serkis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Otis Winston', '/sLiGyvLoPmdfaBLM2jyyt8YYcik.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Otis Winston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Street Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Otis Winston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vaughn Johseph', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vaughn Johseph');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tie Down Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Vaughn Johseph';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kristen Simoes', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kristen Simoes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Reporter - San Quentin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Kristen Simoes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miguel Angel Arreguin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miguel Angel Arreguin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gas Station Attendant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Miguel Angel Arreguin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Shaliz Afshar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Shaliz Afshar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Francisco Reporter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Shaliz Afshar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Reece Shearsmith', '/kiMNN1yV2Zejy98HmrGag6EZ5pr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Reece Shearsmith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Priest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Reece Shearsmith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Simon Connolly', '/izjjkm0MdaObxkP8t7Cb3gqUZX7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Simon Connolly');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Grieving Father', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Simon Connolly';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rachel Handshaw', '/8QWc14rdCg60eLKIbnuZchNuU7B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rachel Handshaw');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Grieving Mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Rachel Handshaw';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amanda Foster', '/g4znsY8XS17dnpH0PKV3Co8FbIR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amanda Foster');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victim''s Sister', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Amanda Foster';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Akie Kotabe', '/89qQru3SueSpKPhAb1MgoIZEnen.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Akie Kotabe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victim''s Brother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Akie Kotabe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eric Sigmundsson', '/25d39zqpgnuCOi7FXnVZfgA2vk7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eric Sigmundsson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Startled Witness', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Eric Sigmundsson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chabris Napier-Lawrence', '/u3Kwn6hjMjg33XS51WBDF611KCE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chabris Napier-Lawrence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ravenscroft Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Chabris Napier-Lawrence';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Larry Olubamiwo', '/3LTOTc2E8kRumk9C04hMSwGG8JA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Larry Olubamiwo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ravenscroft Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Larry Olubamiwo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jose Palma', '/27aw7tXkfZZW2Zdqrf3OSVzOus0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jose Palma');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Quentin Last Meal Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Jose Palma';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ashlen Aquila', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ashlen Aquila');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Quentin Last Meal Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Ashlen Aquila';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jamal Ajala', '/vxICLi5tvtgHmd64szIHzDbZPyE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jamal Ajala');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ravenscroft Orderly', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Jamal Ajala';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James D. Weston II', '/5Syon9PTMAdxPMkFNcfgxe91pji.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James D. Weston II');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Quentin Commander', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'James D. Weston II';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Che Amaro', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Che Amaro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'San Quentin Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Che Amaro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joshua Eldridge-Smith', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joshua Eldridge-Smith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sympathetic Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Joshua Eldridge-Smith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rosie Marcel', '/vwzCPFkmHzlgAqj1ZDJpqvyFIFd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rosie Marcel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Detective in Bathroom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Rosie Marcel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elliot Cable', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elliot Cable');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Host Pre Carnival #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Elliot Cable';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'J.K. 시몬스', '/ScmKoJ9eiSUOthAt1PDNLi8Fkw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'J.K. 시몬스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'J. Jonah Jameson (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'J.K. 시몬스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '톰 홀랜드', '/6ZCeGtdrat1n74K7WHpQ90HaZ5Y.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 홀랜드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Peter Parker / Spider-Man (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = '톰 홀랜드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Zepeda', '/2l8SpihRUmyYI0u8bdsc54lF8HK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Zepeda');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Max Irázabal (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'David Zepeda';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason McNab', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason McNab');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Talkative Red Jacket Reveller (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 580489 AND a.name = 'Jason McNab';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '앤디 서키스', '/eNGqhebQ4cDssjVeNFrKtUvweV5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '앤디 서키스');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 580489 AND d.name = '앤디 서키스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/fHnKlSp28U648O4vm95z86Jw5tT.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 580489;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 580489;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1196470, 'Survivre', '2024-06-19', '', '', 90, '', 'RELEASED', 788.558000, 5.100000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1196470 AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1196470 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1196470 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1196470 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andreas Pietschmann', '/2eXCr0GfkjVRbPgMacZlR8fMjYL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andreas Pietschmann');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1196470 AND a.name = 'Andreas Pietschmann';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '에밀리 드켄', '/aNGdK8n9GCzgHbxcucqdgmKM8lR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '에밀리 드켄');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Julia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1196470 AND a.name = '에밀리 드켄';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lucas Ebel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lucas Ebel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ben', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1196470 AND a.name = 'Lucas Ebel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Arben Bajraktaraj', '/3MYjqNvkUv0ltieUw2Hhfrs3W6y.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Arben Bajraktaraj');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'L''homme au harpon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1196470 AND a.name = 'Arben Bajraktaraj';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lisa Delamar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lisa Delamar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cassie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1196470 AND a.name = 'Lisa Delamar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olivier Ho Hio Hen', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olivier Ho Hio Hen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nao', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1196470 AND a.name = 'Olivier Ho Hio Hen';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Frédéric Jardin', '/uiJA1LYyfFcFUuxYBl21F6Hx7BL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Frédéric Jardin');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1196470 AND d.name = 'Frédéric Jardin';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/901kRttzfLScns7ss7RyKqG6d2A.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1196470;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/csQSGH0QU8D3Ov5YLEYuHep8ihA.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1196470;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1094974, 'Take Cover', '2024-10-04', '', '', 89, '', 'RELEASED', 736.635000, 6.689000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1094974 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1094974 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스콧 애드킨스', '/9NRr2a1riIn5CWn5McZLJlk4vxR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스콧 애드킨스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sam', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = '스콧 애드킨스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앨리스 이브', '/tJUSx0Cw7pCnRsCWbGTX2POiTKM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앨리스 이브');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tamara', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = '앨리스 이브';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jack Parr', '/9rva81mBAVFaZUA1x7njRb32Mdq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jack Parr');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ken', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = 'Jack Parr';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Billy Clements', '/nipJ22DXJBsdM1teQodwop42U6S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Billy Clements');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brutus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = 'Billy Clements';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mădălina Bellariu Ion', '/8M8HNOixq1S8YpJUytlIYw72F66.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mădălina Bellariu Ion');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mona', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = 'Mădălina Bellariu Ion';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Renars Latkovskis', '/2pNeLg1VIXFtr9b2lwwBIPvkHAp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Renars Latkovskis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mirko', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = 'Renars Latkovskis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nik Coleman', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nik Coleman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Yevgeny', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = 'Nik Coleman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alba De Torrebruna', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alba De Torrebruna');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lily', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1094974 AND a.name = 'Alba De Torrebruna';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Nick McKinless', '/7EE9cDfjV0eAHhGyeIQOOw4UEZK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Nick McKinless');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1094974 AND d.name = 'Nick McKinless';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/xNLiMNyFzKTL9PVIEulG55Hei8j.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1094974;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/1aOPPkXASkd2By3EKIw66Ilx5qF.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1094974;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (976734, '카나리 블랙', '2024-10-10', '', 'CIA 최고 요원 에이버리 그레이브스(케이트 베킨세일)는 납치된 남편을 구하기 위해 조국을 배신하라는 테러리스트의 협박을 받는다. 팀과 단절된 그녀는 납치범들이 원하는 정보를 찾기 위해 지하세계의 인맥에 도움을 청한다. 매번 배신을 당하는 에이버리는 글로벌 위기를 촉발할 수 있는 몸값을 전달하기 위해 치명적인 경쟁에 뛰어들게 되는데...', 103, '', 'RELEASED', 701.920000, 6.300000, 525704, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 976734 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 976734 AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 976734 AND g.name = '범죄';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '케이트 베킨세일', '/9RnPZhX9PXaHL4PFE65RUQLSewt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '케이트 베킨세일');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Avery Graves', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = '케이트 베킨세일';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루퍼트 프렌드', '/mYgY8LrMkQ4OkGTIOf6MtkbMnnW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루퍼트 프렌드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'David Brooks', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = '루퍼트 프렌드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Saffron Burrows', '/2qMLZh9XWquBt7TZF9wmDiOtJdm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Saffron Burrows');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Elizabeth Mills', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Saffron Burrows';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레이 스티븐슨', '/msafbswGI6uisRuNvQ8a1wMF5Ca.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레이 스티븐슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jarvis Hedlund', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = '레이 스티븐슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Goran Kostić', '/m6CEa5UjqhPzLRbUNHku9GpvCmQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Goran Kostić');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Breznov', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Goran Kostić';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ben Miles', '/mT3BqoFUkyktXLvefQA6VxaGHJz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ben Miles');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'DCIA Nathan Evans', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Ben Miles';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jaz Hutchins', '/Ala3Jt5ny3G5X4stI7X4SPJG2cz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jaz Hutchins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agent Maxfield', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Jaz Hutchins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Romina Tonković', '/qQYqp9NHSuAxBKJpYtJY9Kq3T28.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Romina Tonković');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sorina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Romina Tonković';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ana Cilas', '/tU8KAVsIPEjeGz426DW3S9eKqT2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ana Cilas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Abby', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Ana Cilas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emma Gojković', '/wKIfGsxrWQmfEtVf9fks1TwWWPm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emma Gojković');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Evans Assistant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Emma Gojković';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Igor Pečenjev', '/mAXEpA9VnwnktYJdnWFZZIGxF07.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Igor Pečenjev');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hostage Agent', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Igor Pečenjev';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrei Lenart', '/5n1S06vvL7YgurFYfG9QNgRV5yM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrei Lenart');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Niklaus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Andrei Lenart';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Luka Alagić', '/5W13uKoMEwcw9pQIUUCe6Fq237c.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Luka Alagić');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Laszlo Stoica', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 976734 AND a.name = 'Luka Alagić';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Pierre Morel', '/pfuvCNPt4BtK81GnMy4GpxYoCs9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Pierre Morel');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 976734 AND d.name = 'Pierre Morel';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hhiR6uUbTYYvKoACkdAIQPS5c6f.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 976734;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/begseNUKhZcc05Bc1UggaX5GeES.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 976734;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1022789, '인사이드 아웃 2', '2024-06-11', '비상! 새로운 감정들이 몰려온다!', '13살이 된 라일리의 행복을 위해 매일 바쁘게 머릿속 감정 컨트롤 본부를 운영하는 ‘기쁨’, ‘슬픔’, ‘버럭’, ‘까칠’, ‘소심’. 그러던 어느 날, 낯선 감정인 ‘불안’, ‘당황’, ‘따분’, ‘부럽’이가 본부에 등장하고, 언제나 최악의 상황을 대비하며 제멋대로인 ‘불안’이와 기존 감정들은 계속 충돌한다. 결국 새로운 감정들에 의해 본부에서 쫓겨나게 된 기존 감정들은 다시 본부로 돌아가기 위해 위험천만한 모험을 시작하는데…', 97, 'ALL', 'RELEASED', 811.612000, 7.600000, 1682636477, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1022789 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1022789 AND g.name = '가족';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1022789 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1022789 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1022789 AND g.name = '드라마';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '에이미 폴러', '/rwmvRonpluV6dCPiQissYrchvSD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '에이미 폴러');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Joy (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '에이미 폴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마야 호크', '/evjbbHM1bzA6Ma5Ptjwa4WkYkkj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마야 호크');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anxiety (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '마야 호크';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '켄싱턴 톨먼', '/tBqawwg2VJq1V4mZjAOFQ7fnXNW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '켄싱턴 톨먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Riley (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '켄싱턴 톨먼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리자 라피라', '/o3jvQAGWtxi5rEycslhC6CY8BWX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리자 라피라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Disgust (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '리자 라피라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '토니 헤일', '/3dEyZgTye0Ec17VGKp0mJ3aU6ty.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '토니 헤일');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fear (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '토니 헤일';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '루이스 블랙', '/1Yvp5dwnJ1UI0KtXGNhZ384wTgv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루이스 블랙');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anger (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '루이스 블랙';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '필리스 스미스', '/h9w9pQbiderRWAC2mi7spjzuIGz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '필리스 스미스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sadness (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '필리스 스미스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아요 에데비리', '/V9TNVjNkAJIiCHLTzcnHLktnPf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아요 에데비리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Envy (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '아요 에데비리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '릴리마르 에르난데스', '/cRerzbUsq0TiWe6z0VGtLHz4JOa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '릴리마르 에르난데스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Valentina (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '릴리마르 에르난데스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Grace Lu', '/iRHUHXADcEgUBAAjixnVnAH6MLt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Grace Lu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Grace (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Grace Lu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sumayyah Nuriddin-Green', '/9yTDK4xUSAsC5fVY2bvgCaTnZ7L.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sumayyah Nuriddin-Green');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bree (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Sumayyah Nuriddin-Green';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아델 에그자르코풀로스', '/zlto2xvsdzLnfzoZNnS6txzNO5l.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아델 에그자르코풀로스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ennui (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '아델 에그자르코풀로스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '다이앤 레인', '/6OfP3vFMuCL51zamFKgb8aS74hs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '다이앤 레인');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mom (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '다이앤 레인';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '카일 맥라클란', '/dNGPjhInyADHjiiYJAWsSUAIC7o.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '카일 맥라클란');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dad (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '카일 맥라클란';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '폴 월터 하우저', '/nhjefgcPcOTa0p4aprajsXPDERw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '폴 월터 하우저');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Embarrassment (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '폴 월터 하우저';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '이벳 니콜 브라운', '/ghdt5K3noAdmWV2YFLWegLRuK3T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '이벳 니콜 브라운');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Coach Roberts (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '이벳 니콜 브라운';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '론 펀치스', '/DtULMxPvAlOKfrwISxdEffIKlk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '론 펀치스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bloofy (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '론 펀치스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Austin Johnson', '/g9y0aABiKtB1FOIKmklDlgRpDof.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Austin Johnson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pouchy (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'James Austin Johnson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yong Yea', '/mZX1dsTJBtiSE5LMCGAdq94UZsP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yong Yea');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lance Slashblade (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Yong Yea';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steve Purcell', '/8wdCJVDq7v4g5N9Qkv8D87B3Xne.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steve Purcell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Deep Dark Secret (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Steve Purcell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이브 고엘스', '/tBJDwH008IVSeTCB5e2P856NbIv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이브 고엘스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mind Cop Frank (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '데이브 고엘스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kirk R. Thatcher', '/7rkO6MLFgcPzbLV4mpwLu2r6M3S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kirk R. Thatcher');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Foreman (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Kirk R. Thatcher';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '프랭크 오즈', '/mb2JbT8s6LIgaxj6QTph0NW1pmI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '프랭크 오즈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mind Cop Dave (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '프랭크 오즈';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '폴라 펠', '/aQZsAcaac2zzLBMhb15O2mrSrpx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '폴라 펠');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mom''s Anger (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '폴라 펠';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '준 스큅', '/iohsuSDPcVAFr0NKQifM7qEJDFt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '준 스큅');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nostalgia (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '준 스큅';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '피트 닥터', '/vITDphkNpSn1LP5gUEheAnlclnl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '피트 닥터');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dad''s Anger (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '피트 닥터';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paula Poundstone', '/jfu3LSX48WbvcJ4NXmrdI48epLJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paula Poundstone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Forgetter Paula (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Paula Poundstone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John Ratzenberger', '/oRtDEOuIO1yDhTz5dORBdxXuLMO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Ratzenberger');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fritz (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'John Ratzenberger';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sarayu Blue', '/zW1G9wSJ03iaSDToFxkMJaqGZLs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sarayu Blue');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Margie (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Sarayu Blue';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '플리', '/nGQE7xf4YJeqO0a4lpFebhwI7R9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '플리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jake (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '플리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '바비 모니한', '/gOvwNz5joi5yWJ7dAhuF8WA2aas.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '바비 모니한');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Forgetter Bobby (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = '바비 모니한';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kendall Coyne Schofield', '/hkFryqJW9IYDlZRlDfmINbvVvKy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kendall Coyne Schofield');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hockey Announcer (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1022789 AND a.name = 'Kendall Coyne Schofield';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '켈시 만', '/fbZTKdt6wcZ6s6J0z91ZpxXpqOY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '켈시 만');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1022789 AND d.name = '켈시 만';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/x2BHx02jMbvpKjMvbf8XxJkYwHJ.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1022789;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/p5ozvmdgsmbWe0H8Xk7Rc8SCwAB.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1022789;

