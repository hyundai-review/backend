INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (28, '액션', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (12, '모험', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (16, '애니메이션', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (35, '코미디', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (80, '범죄', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (99, '다큐멘터리', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (18, '드라마', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (10751, '가족', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (14, '판타지', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (36, '역사', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (27, '공포', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (10402, '음악', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (9648, '미스터리', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (10749, '로맨스', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (878, 'SF', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (10770, 'TV 영화', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (53, '스릴러', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (10752, '전쟁', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO genre (tmdb_id, name, created_at, updated_at)
VALUES (37, '서부', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (912649, '베놈: 라스트 댄스', '2024-10-22', '죽음이 갈라놓을 때까지',
        '환상의 케미스트리의 에디 브록과 그의 심비오트 베놈은 그들을 노리는 정체불명 존재의 추격을 피해 같이 도망을 다니게 된다. 한편 베놈의 창조자 널은 고향 행성에서부터 그들을 찾아내기 위해 지구를 침략하고 에디와 베놈은 그동안 겪어보지 못한 최악의 위기를 맞이하게 되는데…',
        109, '15', 'NOW_PLAYING', 3685.151000, 6.403000, 394000000, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 912649
  AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 912649
  AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 912649
  AND g.name = '모험';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2524,
       '톰 하디',
       '/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 하디');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie Brock / Venom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 912649
  AND a.name = '톰 하디';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 5294,
       '추이텔 에지오포',
       '/kq5DDnqqofoRI0t6ddtRlsJnNPT.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '추이텔 에지오포');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'General Rex Strickland', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 912649
  AND a.name = '추이텔 에지오포';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 36594,
       '주노 템플',
       '/wMpZcKp7zaHnmNQooqbve33577Q.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '주노 템플');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Teddy Paine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 912649
  AND a.name = '주노 템플';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1861573,
       'Clark Backo',
       '/d24KKFxfoql6PBsBPsejFgzhSlH.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clark Backo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sadie Christmas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 912649
  AND a.name = 'Clark Backo';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 7026,
       '리스 에반스',
       '/1D670EEsbky3EtO7XLG32A09p92.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리스 에반스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Martin Moon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 912649
  AND a.name = '리스 에반스';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 940376,
       'Kelly Marcel',
       '/thpdVW7O1975GcA3eNs1H8UIlmd.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Kelly Marcel');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 912649
  AND d.name = 'Kelly Marcel';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3flIDcZF3tnR7m5OU2h7lLPQwmr.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 912649;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 912649;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (1034541, '테리파이어 3', '2024-10-09', '',
        '"아트 더 클라운"이 크리스마스 이브에 평화롭게 잠든 "마일스 카운티"의 주민들을 향해 혼돈을 일으키려 한다', 125, '', 'RELEASED',
        3304.003000, 6.919000, 78573405, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1034541
  AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1034541
  AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1034541
  AND g.name = '미스터리';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1882502,
       '로렌 라베라',
       '/qJYWq2oZcvHh7lnGskxkrYXCom0.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로렌 라베라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sienna Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1034541
  AND a.name = '로렌 라베라';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2787720,
       'Elliott Fullam',
       '/dNsFLihmWfA2KCENbZCtq9AjSob.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elliott Fullam');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jonathan Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1034541
  AND a.name = 'Elliott Fullam';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1880016,
       '데이비드 하워드 손턴',
       '/9nYijs4ACzjg93zKezLiLmuRGvp.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이비드 하워드 손턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Art the Clown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1034541
  AND a.name = '데이비드 하워드 손턴';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1676771,
       'Samantha Scaffidi',
       '/jwd0XXuc4ibXAXjOxmhsFP0fQEO.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Scaffidi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria Heyes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1034541
  AND a.name = 'Samantha Scaffidi';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 37405,
       'Margaret Anne Florence',
       '/c2EqBueLCrn6XEnmfutylUd1icl.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Margaret Anne Florence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jessica', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1034541
  AND a.name = 'Margaret Anne Florence';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 933176,
       'Damien Leone',
       '/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Damien Leone');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 1034541
  AND d.name = 'Damien Leone';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/l1175hgL5DoXnqeZQCcU3eZIdhX.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 1034541;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/18TSJF1WLA4CkymvVUcKDBwUJ9F.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 1034541;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (1118031, '아포칼립스 Z: 종말의 시작', '2024-10-04', '',
        '광견병과 유사한 질병이 지구 전역에 퍼져 사람들이 공격적인 생명체로 변한다. 마넬은 고양이와 함께 집에 숨어서 재치를 발휘해 살아남는다. 곧 둘은 식량을 구하고 육지와 바다의 안전한 곳을 찾기 위해 떠나야 한다.',
        119, '', 'RELEASED', 2835.786000, 6.800000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1118031
  AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1118031
  AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1118031
  AND g.name = '공포';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2422766,
       'Francisco Ortiz',
       '/iIwGt05vG5smGDiLJ7f6bMRQOOY.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Francisco Ortiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1118031
  AND a.name = 'Francisco Ortiz';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 72128,
       'José María Yázpik',
       '/uqZE7oXEADJ1NTg7g7xRELw59Hy.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'José María Yázpik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pritchenko', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1118031
  AND a.name = 'José María Yázpik';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1457340,
       'Berta Vázquez',
       '/2QNOI5L03XomONmCR42GPyVYryy.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Berta Vázquez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucía', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1118031
  AND a.name = 'Berta Vázquez';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2264694,
       'Iria del Río',
       '/z7Dqvpnb8R13P6B5pmUCDxb2Jvv.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iria del Río');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Julia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1118031
  AND a.name = 'Iria del Río';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1460406,
       'Marta Poveda',
       '/gsQvVa5uipx5YAQ8esJevlmPjsv.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marta Poveda');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Belén', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1118031
  AND a.name = 'Marta Poveda';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 1017209,
       'Carles Torrens',
       '/jBGDX4BwsytGhPehgrrPKFFlIgn.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Carles Torrens');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 1118031
  AND d.name = 'Carles Torrens';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hofZ9t2zQEYjQWNZ8cPjMByVHci.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 1118031;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/2fxnTXr8NwyTFkunkimJkGkhqfy.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 1118031;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (1184918, '와일드 로봇', '2024-09-12', '너를 통해 더 넓은 세상을 만나다',
        '우연한 사고로 거대한 야생에 불시착한 로봇 로즈는 주변 동물들의 행동을 배우며 낯선 환경 속에 적응해 가던 중, 사고로 세상에 홀로 남겨진 아기 기러기 브라이트빌의 보호자가 된다. 로즈는 입력되어 있지 않은 새로운 역할과 관계에 낯선 감정을 마주하고 겨울이 오기 전에 남쪽으로 떠나야 하는 브라이트빌을 위해 동물들의 도움을 받아 이주를 위한 생존 기술을 가르쳐준다. 그러나 선천적으로 몸집이 작은 브라이트빌은 짧은 비행도 힘겨워 하는데...',
        102, 'ALL', 'RELEASED', 2050.517000, 8.487000, 292583746, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1184918
  AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1184918
  AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 1184918
  AND g.name = '가족';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1267329,
       '루피타 뇽오',
       '/y40Wu1T742kynOqtwXASc5Qgm49.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '루피타 뇽오');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Roz / Rummage (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1184918
  AND a.name = '루피타 뇽오';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1253360,
       '페드로 파스칼',
       '/9VYK7oxcqhjd5LAH6ZFJ3XzOlID.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '페드로 파스칼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fink (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1184918
  AND a.name = '페드로 파스칼';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1538851,
       '킷 코너',
       '/gCIdbnV9D3lzTaOB0YtuKDz6Nt0.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '킷 코너');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brightbill (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1184918
  AND a.name = '킷 코너';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2440,
       '빌 나이',
       '/ixFI2YCGNGJfwlpI8iyhvVZRg8C.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '빌 나이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Longneck (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1184918
  AND a.name = '빌 나이';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1381186,
       '스테파니 수',
       '/8gb3lfIHKQAGOQyeC4ynQPsCiHr.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스테파니 수');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vontra (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 1184918
  AND a.name = '스테파니 수';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 66193,
       '크리스 샌더스',
       '/6CtrIOCxggJ5eIAWeFQqd4Hs9FP.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '크리스 샌더스');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 1184918
  AND d.name = '크리스 샌더스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/8dkuf9IuVh0VZjDTk7kAY67lU0U.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 1184918;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/v9acaWVVFdZT5yAU7J2QjwfhXyD.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 1184918;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (533535, '데드풀과 울버린', '2024-07-24', '',
        '히어로 생활에서 은퇴한 후, 평범한 중고차 딜러로 살아가던 ‘데드풀’이 예상치 못한 거대한 위기를 맞아 모든 면에서 상극인 ‘울버린’을 찾아가게 되며 펼쳐지는 도파민 폭발 액션 블록버스터.',
        128, '19', 'RELEASED', 2060.103000, 7.704000, 1336816114, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 533535
  AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 533535
  AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 533535
  AND g.name = 'SF';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 10859,
       '라이언 레이놀즈',
       '/6m3hkkHmKkD4MUJhng7ojE7MLKC.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '라이언 레이놀즈');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Wade Wilson / Deadpool / Nicepool', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 533535
  AND a.name = '라이언 레이놀즈';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 6968,
       '휴 잭맨',
       '/4Xujtewxqt6aU0Y81tsS9gkjizk.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '휴 잭맨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Logan / Wolverine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 533535
  AND a.name = '휴 잭맨';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2324569,
       '엠마 코린',
       '/wqGOVOsHzZaHeHymIS40elGCnY0.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '엠마 코린');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cassandra Nova', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 533535
  AND a.name = '엠마 코린';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 15576,
       '매튜 맥패디언',
       '/2FF3Yjxd7DYR4EIJL6s2GpKDMkJ.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '매튜 맥패디언');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Paradox', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 533535
  AND a.name = '매튜 맥패디언';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1464650,
       '다프네 킨',
       '/g325OIjIHrFr0te8ewPfhKQ2SKj.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '다프네 킨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Laura / X-23', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 533535
  AND a.name = '다프네 킨';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 17825,
       '숀 레비',
       '/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '숀 레비');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 533535
  AND d.name = '숀 레비';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/4Zb4Z2HjX1t5zr1qYOTdVoisJKp.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 533535;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/dvBCdCohwWbsP5qAaglOXagDMtk.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 533535;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (278, '쇼생크 탈출', '1994-09-23', '두려움은 너를 죄수로 가두고 희망은 너를 자유롭게 하리라',
        '촉망받는 은행 간부 앤디 듀프레인은 아내와 그녀의 정부를 살해했다는 누명을 쓴다. 주변의 증언과 살해 현장의 그럴듯한 증거들로 그는 종신형을 선고받고 악질범들만 수용한다는 지옥같은 교도소 쇼생크로 향한다. 인간 말종 쓰레기들만 모인 그곳에서 그는 이루 말할 수 없는 억압과 짐승보다 못한 취급을 당한다. 그러던 어느 날, 간수의 세금을 면제받게 해 준 덕분에 그는 일약 교도소의 비공식 회계사로 일하게 된다. 그 와중에 교도소 소장은 죄수들을 이리저리 부리면서 검은 돈을 긁어 모으고 앤디는 이 돈을 세탁하여 불려주면서 그의 돈을 관리하는데...',
        142, '15', 'RELEASED', 212.057000, 8.707000, 28341469, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 278
  AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 278
  AND g.name = '범죄';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 504,
       '팀 로빈스',
       '/djLVFETFTvPyVUdrd7aLVykobof.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '팀 로빈스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Andy Dufresne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 278
  AND a.name = '팀 로빈스';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 192,
       '모건 프리먼',
       '/905k0RFzH0Kd6gx8oSxRdnr6FL.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '모건 프리먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ellis Boyd ''Red'' Redding', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 278
  AND a.name = '모건 프리먼';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 4029,
       'Bob Gunton',
       '/ulbVvuBToBN3aCGcV028hwO0MOP.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bob Gunton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Warden Norton', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 278
  AND a.name = 'Bob Gunton';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 6573,
       'William Sadler',
       '/rWeb2kjYCA7V9MC9kRwRpm57YoY.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'William Sadler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Heywood', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 278
  AND a.name = 'William Sadler';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 6574,
       '클랜시 브라운',
       '/1JeBRNG7VS7r64V9lOvej9bZXW5.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '클랜시 브라운');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Byron T. Hadley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 278
  AND a.name = '클랜시 브라운';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 4027,
       '프랭크 다라본트',
       '/7LqmE3p1XTwCdNCOmBxovq210Qk.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '프랭크 다라본트');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 278
  AND d.name = '프랭크 다라본트';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/oAt6OtpwYCdJI76AVtVKW1eorYx.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 278;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/zfbjgQE1uSd9wiPTX4VzsLi0rGG.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 278;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (238, '대부', '1972-03-14', '영화사상 최고의 걸작',
        '시실리에서 이민온 뒤, 정치권까지 영향력을 미치는 거물로 자리잡은 돈 꼴레오네는 갖가지 고민을 호소하는 사람들의 문제를 해결해주며 대부라 불리운다. 한편 솔로소라는 인물은 꼴레오네가와 라이벌인 탓타리아 패밀리와 손잡고 새로운 마약 사업을 제안한다. 돈 꼴레오네가 마약 사업에 참여하지 않기로 하자, 돈 꼴레오네를 저격해 그는 중상을 입고 사경을 헤매게 된다. 그 뒤, 돈 꼴레오네의 아들 소니는 조직력을 총 동원해 다른 패밀리들과 피를 부르는 전쟁을 시작하는데... 가족의 사업과 상관없이 대학에 진학한 뒤 인텔리로 지내왔던 막내 아들 마이클은 아버지가 총격을 당한 뒤, 아버지를 구하기 위해 위험천만한 협상 자리에 나선다.',
        175, '19', 'RELEASED', 228.602000, 8.700000, 245066411, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 238
  AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 238
  AND g.name = '범죄';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3084,
       '말론 브란도',
       '/fuTEPMsBtV1zE98ujPONbKiYDc2.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '말론 브란도');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Don Vito Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 238
  AND a.name = '말론 브란도';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1158,
       '알 파치노',
       '/2dGBb1fOcNdZjtQToVPFxXjm4ke.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '알 파치노');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Michael Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 238
  AND a.name = '알 파치노';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3085,
       '제임스 칸',
       '/oRTyqWg0LReELvjms8WwkeTsDFS.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제임스 칸');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sonny Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 238
  AND a.name = '제임스 칸';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3087,
       '로버트 듀발',
       '/ybMmK25h4IVtfE7qrnlVp47RQlh.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로버트 듀발');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom Hagen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 238
  AND a.name = '로버트 듀발';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3086,
       'Richard S. Castellano',
       '/1vr75BdHWret81vuSJ3ugiCBkxw.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Richard S. Castellano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clemenza', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 238
  AND a.name = 'Richard S. Castellano';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 1776,
       '프랜시스 포드 코폴라',
       '/3Pblihd6KjXliie9vj4iQJwbNPU.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '프랜시스 포드 코폴라');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 238
  AND d.name = '프랜시스 포드 코폴라';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/I1fkNd5CeJGv56mhrTDoOeMc2r.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 238;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 238;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (240, '대부 2', '1974-12-20', '대부가 암시하고 예고한 모든 것',
        '아버지의 장례식 도중에 맏아들 파올로가 총에 맞아 죽고, 비토(로버트 드니로)는 겨우 도망쳐 미국으로 건너온다. 대부로 성장한 후 비토는 다시 치치오를 찾아 복수를 한다. 새롭게 등장한 젊은 대부 마이클(알 파치노)은 본거지를 라스베가스로 옮기고 가족의 사업을 가능한 합법적인 것으로 바꾸려고 애쓴다. 그런 과중 중에 자신을 제거하려는 음모를 알게되고 그는 냉혹하고 신속하게 반대파들을 제거, 조직을 더욱 확대해 나간다. 이를 위해 마이클은 배신한 형마저 죽이고, 일 때문에 아내와 헤어지는 등 인간적으로는 계속 외로워져 가는데...',
        202, '19', 'RELEASED', 128.164000, 8.600000, 102600000, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 240
  AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 240
  AND g.name = '범죄';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1158,
       '알 파치노',
       '/2dGBb1fOcNdZjtQToVPFxXjm4ke.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '알 파치노');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Don Michael Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 240
  AND a.name = '알 파치노';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3087,
       '로버트 듀발',
       '/ybMmK25h4IVtfE7qrnlVp47RQlh.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로버트 듀발');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom Hagen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 240
  AND a.name = '로버트 듀발';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3092,
       '다이앤 키튼',
       '/tuLGQLb2IVWtar4MU3Hg5z9damM.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '다이앤 키튼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kay Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 240
  AND a.name = '다이앤 키튼';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 380,
       '로버트 드 니로',
       '/cT8htcckIuyI1Lqwt1CvD02ynTh.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로버트 드 니로');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vito Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 240
  AND a.name = '로버트 드 니로';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3096,
       '존 카제일',
       '/ff2MXG4OpO5wJCu75l3iE5Xxjm7.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 카제일');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Frederico ''Fredo'' Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 240
  AND a.name = '존 카제일';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 1776,
       '프랜시스 포드 코폴라',
       '/3Pblihd6KjXliie9vj4iQJwbNPU.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '프랜시스 포드 코폴라');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 240
  AND d.name = '프랜시스 포드 코폴라';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/bhqvqYuAgrTGwyNAmMR0ZVmjXel.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 240;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/kGzFbGhp99zva6oZODW5atUtnqi.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 240;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (424, '쉰들러 리스트', '1993-12-15', '한 생명을 구한 자는 세계를 구한 것이다',
        '2차 세계대전 당시 독일군이 점령한 폴란드. 시류에 맞춰 자신의 성공을 추구하는 기회주의자 쉰들러는 유태인이 경영하는 그릇 공장을 인수한다. 그는 공장을 인수하기 위해 나찌 당원이 되고 독일군에게 뇌물을 바치는 등 갖은 방법을 동원한다. 그러나 냉혹한 기회주의자였던 쉰들러는 유태인 회계사인 스턴과 친분을 맺으면서 냉혹한 유태인 학살에 대한 양심의 소리를 듣기 시작한다. 마침내 그는 강제 수용소로 끌려가 죽음을 맞게될 유태인들을 구해내기로 결심하고, 독일군 장교에게 빼내는 사람 숫자대로 뇌물을 주는 방법으로 유태인들을 구해내려는 계획을 세우는데...',
        195, '15', 'RELEASED', 77.218000, 8.565000, 321365567, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 424
  AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 424
  AND g.name = '역사';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 424
  AND g.name = '전쟁';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 3896,
       '리암 니슨',
       '/sRLev3wJioBgun3ZoeAUFpkLy0D.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리암 니슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Oskar Schindler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 424
  AND a.name = '리암 니슨';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 2282,
       '벤 킹슬리',
       '/vQtBqpF2HDdzbfXHDzR4u37i1Ac.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '벤 킹슬리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Itzhak Stern', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 424
  AND a.name = '벤 킹슬리';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 5469,
       '레이프 파인스',
       '/tJr9GcmGNHhLVVEH3i7QYbj6hBi.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레이프 파인스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Amon Goeth', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 424
  AND a.name = '레이프 파인스';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 6692,
       'Caroline Goodall',
       '/4cagGtMqACvkuw6Llq8Li8UJ1AR.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Caroline Goodall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emilie Schindler', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 424
  AND a.name = 'Caroline Goodall';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 6693,
       'Jonathan Sagall',
       '/waxNDsgfw7CXXO3LH8EdKi8z7VV.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonathan Sagall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Poldek Pfefferberg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 424
  AND a.name = 'Jonathan Sagall';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 488,
       '스티븐 스필버그',
       '/tZxcg19YQ3e8fJ0pOs7hjlnmmr6.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '스티븐 스필버그');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 424
  AND d.name = '스티븐 스필버그';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/oyyUcGwLX7LTFS1pQbLrQpyzIyt.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 424;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/zb6fM1CX41D9rF9hdgclu0peUmy.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 424;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,
                   runtime, certification, status, popularity, vote_avg, revenue,
                   created_at, updated_at)
VALUES (389, '12명의 성난 사람들', '1957-04-10', '',
        '뉴욕시의 법정에 아버지를 칼로 찌른 한 소년의 살인혐의를 두고, 12인의 배심원들은 만장일치 합의를 통해 소년의 유무죄 여부를 가려줄 것을 요구받는다. 판사는 유죄일 경우 이 소년은 사형이 불가피하다는 것을 이들에게 미리 일러둔다.  배심원 방에 모인 이들은 투표를 통해 유무죄 여부를 가리기로 한다. 사람들이 전부 소년이 유죄로 판단하는 가운데, 오직 한 배심원만이 소년이 무죄라고 주장하는데...',
        97, '', 'RELEASED', 99.891000, 8.546000, 4360000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     genre g
WHERE m.tmdb_id = 389
  AND g.name = '드라마';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 1936,
       '마틴 발삼',
       '/2j4LJJfTPQtvnjp8LfSGOvWFATO.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마틴 발삼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juror 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 389
  AND a.name = '마틴 발삼';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 5247,
       'John Fiedler',
       '/6vfLLGeGuO6Ko0VRnyhgE2v6RUu.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Fiedler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juror 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 389
  AND a.name = 'John Fiedler';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 5248,
       '리J.콥',
       '/dMpk9Xd3BqGOGHyOA1wQCcF8v1I.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리J.콥');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juror 3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 389
  AND a.name = '리J.콥';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 5249,
       'E.G. Marshall',
       '/psimeVoRk64DV7UNm4cLQylRFy2.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'E.G. Marshall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juror 4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 389
  AND a.name = 'E.G. Marshall';

INSERT INTO actor (tmdb_id, name, profile, created_at, updated_at)
SELECT 5250,
       'Jack Klugman',
       '/oJxveOxlunD8C9OczqKeryU0k6D.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jack Klugman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Juror 5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     actor a
WHERE m.tmdb_id = 389
  AND a.name = 'Jack Klugman';

INSERT INTO director (tmdb_id, name, profile, created_at, updated_at)
SELECT 39996,
       '시드니 루멧',
       '/hjj3V2DkPJ46zo5uz9bsZQzAk6R.jpg',
       CURRENT_TIMESTAMP,
       CURRENT_TIMESTAMP WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '시드니 루멧');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m,
     director d
WHERE m.tmdb_id = 389
  AND d.name = '시드니 루멧';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/xzh6Rq9cKnE1M309PzC5S5QWF9S.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 389;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/qqHQsStV6exghCM7zbObuYBiYxw.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m
WHERE m.tmdb_id = 389;

