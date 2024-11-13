INSERT  INTO genre (name, created_at, updated_at)
VALUES ('액션', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('모험', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('애니메이션', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('코미디', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('범죄', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('다큐멘터리', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('드라마', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('가족', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('판타지', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('역사', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('공포', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('음악', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('미스터리', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('로맨스', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('SF', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('TV 영화', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('스릴러', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('전쟁', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO genre (name, created_at, updated_at)
VALUES ('서부', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO movie (tmdb_id, title, release_date, tagline, overview,
    runtime, certification, status, popularity, vote_avg, revenue,
    created_at, updated_at)
VALUES (912649, '베놈: 라스트 댄스', '2024-10-22', '죽음이 갈라놓을 때까지', '환상의 케미스트리의 에디 브록과 그의 심비오트 베놈은 그들을 노리는 정체불명 존재의 추격을 피해 같이 도망을 다니게 된다. 한편 베놈의 창조자 널은 고향 행성에서부터 그들을 찾아내기 위해 지구를 침략하고 에디와 베놈은 그동안 겪어보지 못한 최악의 위기를 맞이하게 되는데…', 109, '15', 'NOW_PLAYING', 3930.216000, 6.390000, 394000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 912649 AND g.name = 'SF';

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 912649 AND g.name = '액션';

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 912649 AND g.name = '모험';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '톰 하디', '/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '톰 하디');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddie Brock / Venom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '톰 하디';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '추이텔 에지오포', '/kq5DDnqqofoRI0t6ddtRlsJnNPT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '추이텔 에지오포');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'General Rex Strickland', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '추이텔 에지오포';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '주노 템플', '/wMpZcKp7zaHnmNQooqbve33577Q.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '주노 템플');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dr. Teddy Paine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '주노 템플';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Clark Backo', '/d24KKFxfoql6PBsBPsejFgzhSlH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clark Backo');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sadie Christmas', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = 'Clark Backo';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '리스 에반스', '/1D670EEsbky3EtO7XLG32A09p92.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리스 에반스');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Martin Moon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 912649 AND a.name = '리스 에반스';

INSERT  INTO director (name, profile, created_at, updated_at)
SELECT 'Kelly Marcel', '/thpdVW7O1975GcA3eNs1H8UIlmd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Kelly Marcel');

INSERT  INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 912649 AND d.name = 'Kelly Marcel';

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3flIDcZF3tnR7m5OU2h7lLPQwmr.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 912649;

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 912649;

INSERT  INTO movie (tmdb_id, title, release_date, tagline, overview,
    runtime, certification, status, popularity, vote_avg, revenue,
    created_at, updated_at)
VALUES (1118031, '아포칼립스 Z: 종말의 시작', '2024-10-04', '', '광견병과 유사한 질병이 지구 전역에 퍼져 사람들이 공격적인 생명체로 변한다. 마넬은 고양이와 함께 집에 숨어서 재치를 발휘해 살아남는다. 곧 둘은 식량을 구하고 육지와 바다의 안전한 곳을 찾기 위해 떠나야 한다.', 119, '', 'RELEASED', 2835.786000, 6.751000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1118031 AND g.name = '드라마';

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1118031 AND g.name = '액션';

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1118031 AND g.name = '공포';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Francisco Ortiz', '/iIwGt05vG5smGDiLJ7f6bMRQOOY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Francisco Ortiz');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Francisco Ortiz';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'José María Yázpik', '/uqZE7oXEADJ1NTg7g7xRELw59Hy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'José María Yázpik');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Pritchenko', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'José María Yázpik';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Berta Vázquez', '/2QNOI5L03XomONmCR42GPyVYryy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Berta Vázquez');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucía', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Berta Vázquez';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Iria del Río', '/z7Dqvpnb8R13P6B5pmUCDxb2Jvv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Iria del Río');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Julia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Iria del Río';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Marta Poveda', '/gsQvVa5uipx5YAQ8esJevlmPjsv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marta Poveda');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Belén', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1118031 AND a.name = 'Marta Poveda';

INSERT  INTO director (name, profile, created_at, updated_at)
SELECT 'Carles Torrens', '/jBGDX4BwsytGhPehgrrPKFFlIgn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Carles Torrens');

INSERT  INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1118031 AND d.name = 'Carles Torrens';

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hofZ9t2zQEYjQWNZ8cPjMByVHci.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1118031;

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/2fxnTXr8NwyTFkunkimJkGkhqfy.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1118031;

INSERT  INTO movie (tmdb_id, title, release_date, tagline, overview,
    runtime, certification, status, popularity, vote_avg, revenue,
    created_at, updated_at)
VALUES (278, '쇼생크 탈출', '1994-09-23', '두려움은 너를 죄수로 가두고 희망은 너를 자유롭게 하리라', '촉망받는 은행 간부 앤디 듀프레인은 아내와 그녀의 정부를 살해했다는 누명을 쓴다. 주변의 증언과 살해 현장의 그럴듯한 증거들로 그는 종신형을 선고받고 악질범들만 수용한다는 지옥같은 교도소 쇼생크로 향한다. 인간 말종 쓰레기들만 모인 그곳에서 그는 이루 말할 수 없는 억압과 짐승보다 못한 취급을 당한다. 그러던 어느 날, 간수의 세금을 면제받게 해 준 덕분에 그는 일약 교도소의 비공식 회계사로 일하게 된다. 그 와중에 교도소 소장은 죄수들을 이리저리 부리면서 검은 돈을 긁어 모으고 앤디는 이 돈을 세탁하여 불려주면서 그의 돈을 관리하는데...', 142, '15', 'RELEASED', 212.057000, 8.707000, 28341469, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 278 AND g.name = '드라마';

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 278 AND g.name = '범죄';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '팀 로빈스', '/djLVFETFTvPyVUdrd7aLVykobof.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '팀 로빈스');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Andy Dufresne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 278 AND a.name = '팀 로빈스';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '모건 프리먼', '/905k0RFzH0Kd6gx8oSxRdnr6FL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '모건 프리먼');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ellis Boyd ''Red'' Redding', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 278 AND a.name = '모건 프리먼';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Bob Gunton', '/ulbVvuBToBN3aCGcV028hwO0MOP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bob Gunton');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Warden Norton', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 278 AND a.name = 'Bob Gunton';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'William Sadler', '/rWeb2kjYCA7V9MC9kRwRpm57YoY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'William Sadler');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Heywood', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 278 AND a.name = 'William Sadler';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '클랜시 브라운', '/1JeBRNG7VS7r64V9lOvej9bZXW5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '클랜시 브라운');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Byron T. Hadley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 278 AND a.name = '클랜시 브라운';

INSERT  INTO director (name, profile, created_at, updated_at)
SELECT '프랭크 다라본트', '/7LqmE3p1XTwCdNCOmBxovq210Qk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '프랭크 다라본트');

INSERT  INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 278 AND d.name = '프랭크 다라본트';

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/oAt6OtpwYCdJI76AVtVKW1eorYx.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 278;

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/zfbjgQE1uSd9wiPTX4VzsLi0rGG.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 278;

INSERT  INTO movie (tmdb_id, title, release_date, tagline, overview,
    runtime, certification, status, popularity, vote_avg, revenue,
    created_at, updated_at)
VALUES (238, '대부', '1972-03-14', '영화사상 최고의 걸작', '시실리에서 이민온 뒤, 정치권까지 영향력을 미치는 거물로 자리잡은 돈 꼴레오네는 갖가지 고민을 호소하는 사람들의 문제를 해결해주며 대부라 불리운다. 한편 솔로소라는 인물은 꼴레오네가와 라이벌인 탓타리아 패밀리와 손잡고 새로운 마약 사업을 제안한다. 돈 꼴레오네가 마약 사업에 참여하지 않기로 하자, 돈 꼴레오네를 저격해 그는 중상을 입고 사경을 헤매게 된다. 그 뒤, 돈 꼴레오네의 아들 소니는 조직력을 총 동원해 다른 패밀리들과 피를 부르는 전쟁을 시작하는데... 가족의 사업과 상관없이 대학에 진학한 뒤 인텔리로 지내왔던 막내 아들 마이클은 아버지가 총격을 당한 뒤, 아버지를 구하기 위해 위험천만한 협상 자리에 나선다.', 175, '19', 'RELEASED', 212.344000, 8.700000, 245066411, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 238 AND g.name = '드라마';

INSERT  INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 238 AND g.name = '범죄';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '말론 브란도', '/fuTEPMsBtV1zE98ujPONbKiYDc2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '말론 브란도');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Don Vito Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 238 AND a.name = '말론 브란도';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '알 파치노', '/2dGBb1fOcNdZjtQToVPFxXjm4ke.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '알 파치노');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Michael Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 238 AND a.name = '알 파치노';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '제임스 칸', '/oRTyqWg0LReELvjms8WwkeTsDFS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제임스 칸');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sonny Corleone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 238 AND a.name = '제임스 칸';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT '로버트 듀발', '/ybMmK25h4IVtfE7qrnlVp47RQlh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로버트 듀발');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom Hagen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 238 AND a.name = '로버트 듀발';

INSERT  INTO actor (name, profile, created_at, updated_at)
SELECT 'Richard S. Castellano', '/1vr75BdHWret81vuSJ3ugiCBkxw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Richard S. Castellano');

INSERT  INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clemenza', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 238 AND a.name = 'Richard S. Castellano';

INSERT  INTO director (name, profile, created_at, updated_at)
SELECT '프랜시스 포드 코폴라', '/3Pblihd6KjXliie9vj4iQJwbNPU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '프랜시스 포드 코폴라');

INSERT  INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 238 AND d.name = '프랜시스 포드 코폴라';

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/I1fkNd5CeJGv56mhrTDoOeMc2r.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 238;

INSERT  INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 238;

