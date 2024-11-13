INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1331375, '도미니크: 불사조', '2024-10-11', '지옥에 떨어진 천사, 거침없이 상대한다!', '킬러의 삶을 버리지만 범죄의 땅에 추락한 천사. 마을은 경찰까지 카르텔에 장악된 무법지대이다. 친절을 보인 가족이 위험에 처하고 운명은 그녀에게 다시 총을 잡게한다. 경찰특공대와 일당백의 전쟁이 시작된다.', 100, '', 'RELEASED', 755.782000, 7.206000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1331375 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1331375 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Oksana Orlan', '/lofMKIpjHygZ2p6g27FQj8otsjH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Oksana Orlan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dominique', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'Oksana Orlan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sebastián Carvajal', '/cBaHCzpZe27KzWviS41heE01sSe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sebastián Carvajal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Julio', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'Sebastián Carvajal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'María del Rosario', '/ln83cpcticvSWbEMVUD3NtmmLCA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'María del Rosario');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paulina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'María del Rosario';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maurice Compte', '/9PFInf2I0kqjAU0CmZhdDWmHfwT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maurice Compte');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chief Santiago', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'Maurice Compte';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chase Coleman', '/eXrwo2UOgDLbywSUxUBBQcGZbgf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chase Coleman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'John', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'Chase Coleman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ski Carr', '/8D2Ufof8zJ38U3mbWsLZ2jWtaXd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ski Carr');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gonzalo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'Ski Carr';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jose Conejo Martin', '/uvzmbqkVs0FNMrGvCx2HM7Etxko.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jose Conejo Martin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Officer Chago', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1331375 AND a.name = 'Jose Conejo Martin';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Michael S. Ojeda', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Michael S. Ojeda');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1331375 AND d.name = 'Michael S. Ojeda';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/5OTh8Xaoueck7g6qgJNJ6vtHcAP.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1331375;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/jT4KqFTrR2ofpUUwzKCIn4uYWXp.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1331375;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (558449, '글래디에이터 II', '2024-11-13', '역사로 기억될 새로운 반란이 시작된다!', '로마의 영웅이자 최고의 검투사였던 ‘막시무스’가 콜로세움에서 죽음을 맞이한 뒤 20여 년이 흐른 후. 쌍둥이 황제 ‘게타’와 ‘카라칼라’의 폭압 아래 시민을 위한 자유로운 나라 ‘로마의 꿈’은 잊힌 지 오래다. 한편 ‘아카시우스’ 장군이 이끄는 로마군에 대패한 후 모든 것을 잃고 노예로 전락한 ‘루시우스’는 강한 권력욕을 지닌 ‘마크리누스’의 눈에 띄어 검투사로 발탁된다. 로마를 향한 걷잡을 수 없는 분노, 타고난 투사의 기질로 콜로세움에 입성하게 된 ‘루시우스’는 결투를 거듭하며 자신이 진짜 누구인지 알게 되고 마침내 로마의 운명을 건 결전을 준비하게 되는데...!', 148, '19', 'NOW_PLAYING', 1044.357000, 7.600000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 558449 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 558449 AND g.name = '모험';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '폴 메스칼', '/vrzZ41TGNAFgfmZjC2sOJySzBLd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '폴 메스칼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucius Verus / Hanno', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '폴 메스칼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '덴젤 워싱턴', '/jj2Gcobpopokal0YstuCQW0ldJ4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '덴젤 워싱턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Macrinus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '덴젤 워싱턴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '페드로 파스칼', '/9VYK7oxcqhjd5LAH6ZFJ3XzOlID.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '페드로 파스칼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'General Acacius', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '페드로 파스칼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '코니 닐센', '/lvQypTfeH2Gn2PTbzq6XkT2PLmn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '코니 닐센');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucilla', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '코니 닐센';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조셉 퀸', '/zshhuioZaH8S5ZKdMcojzWi1ntl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조셉 퀸');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emperor Geta', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '조셉 퀸';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fred Hechinger', '/dLFy4KFR556j4Z9WstsslhJCwyZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fred Hechinger');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emperor Caracalla', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Fred Hechinger';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lior Raz', '/bl3KLFUQ4Q0zC9lCU4qP1Jf4qHS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lior Raz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Viggo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Lior Raz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데릭 재커비', '/htc4eCYmNlVotcu8AFTbDiLBzsJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데릭 재커비');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gracchus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '데릭 재커비';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peter Mensah', '/t94TFc6f71AUmZFqdaQfjr7LTRp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peter Mensah');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jugurtha', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Peter Mensah';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt Lucas', '/2OhGLJqiknaWlbTkG2KDwT935km.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt Lucas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Master of Ceremonies', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Matt Lucas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexander Karim', '/weqb7jkGhNfdEJsGArbvAqqhuXD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexander Karim');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ravi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Alexander Karim';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yuval Gonen', '/8yJ0nJa27AYx0MPSER6Cln1pHLE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yuval Gonen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arishat', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Yuval Gonen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '리처드 맥케이브', '/j7ra3qbWSYKwONNfJ6GBMuIoixY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '리처드 맥케이브');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Quaestor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '리처드 맥케이브';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tim McInnerny', '/nOLjLixEDo1xFhBmAfRLMKwB9Fv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tim McInnerny');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thraex', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Tim McInnerny';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alec Utgoff', '/zYtPKsXbeUg8kR2UqADdgKDfvJ1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alec Utgoff');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Darius', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Alec Utgoff';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '로리 매캔', '/meEHyiCRXTTCiYQMzP4VEdvEuD0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로리 매캔');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tegula', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = '로리 매캔';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Yann Gael', '/605oiV6iBp2aOa2SdqaoASVvmtz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Yann Gael');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bostar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Yann Gael';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Riana Duce', '/AgJxumDV4srU7ye3d3m0IPDlH7P.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Riana Duce');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hyacinthia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Riana Duce';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alfie Tempest', '/4nkoNuusnc5cIwxlPnEQ9WmIYZZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alfie Tempest');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Lucius', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Alfie Tempest';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amira Ghazalla', '/pYOVA7yWtosslFgNh8lVivaNdT7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amira Ghazalla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucilla''s Servant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Amira Ghazalla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexander Simkin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexander Simkin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Centurion', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Alexander Simkin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Ganly', '/e9NUAspQ306cmyhkl3gG5LU1LHi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Ganly');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Master of Ceremonies (Baboon Arena)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'David Ganly';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Richard Katz', '/crAR7zWiz6LhnJSxi6gNuRwQDRu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Richard Katz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Governor (Baboon Arena)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Richard Katz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amal Ayouch', '/iXQaRrogvLUVq7AMW3xC6bwUXpB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amal Ayouch');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Noble Bedouin Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Amal Ayouch';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hadrian Howard', '/zNnuXJlPm8LQaOHPauDD8HIH6jD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hadrian Howard');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Agedilios', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Hadrian Howard';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chidi Ajufo', '/fOBzmoaaigPNBWnldBx4wIf3lIS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chidi Ajufo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gladiator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Chidi Ajufo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lee Charles', '/hPcEeF8mG9PiOJmnduVjq9yH9jD.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lee Charles');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Slovak', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Lee Charles';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christopher Edward Hallaways', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christopher Edward Hallaways');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Glyceo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Christopher Edward Hallaways';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chi Lewis-Parry', '/eS5mcqDMYtwHJ8lnwXkIjkz88WO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chi Lewis-Parry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Phoebus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Chi Lewis-Parry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ángel Gómez De La Torre', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ángel Gómez De La Torre');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gnaeus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Ángel Gómez De La Torre';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brahim Ait Ben Azzouz', '/uFi12glMQ9QXTY1zRuhdh785AWp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brahim Ait Ben Azzouz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Centurion (Lucius'' Arrest)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Brahim Ait Ben Azzouz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maxime Rauf Ruijselaar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maxime Rauf Ruijselaar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Centurion (Ostia)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Maxime Rauf Ruijselaar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dean Fagan', '/m0fe5GK7BhiZXczvyKEKD5KDV2P.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dean Fagan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dorso', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Dean Fagan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tom Moutchi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tom Moutchi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brennos', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 558449 AND a.name = 'Tom Moutchi';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '리들리 스콧', '/zABJmN9opmqD4orWl3KSdCaSo7Q.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '리들리 스콧');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 558449 AND d.name = '리들리 스콧';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/b5UXjzW5cLZhprMnlAmsVAA3G4t.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 558449;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/8mjYwWT50GkRrrRdyHzJorfEfcl.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 558449;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1214484, '렛 고', '2024-11-01', '', '가정생활에 지쳐버린 엄마가 가족들의 화합을 위해 마지막 노력을 쏟아 보려 한다. 바로 10대 딸의 폴댄스 대회를 위해 온 가족이 여행을 떠나는 것.', 110, '19', 'RELEASED', 592.826000, 8.095000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1214484 AND g.name = '드라마';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Josephine Bornebusch', '/nba2j9kEqZrFI1VdoYNXxWeK2Mv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Josephine Bornebusch');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stella', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Josephine Bornebusch';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pål Sverre Hagen', '/eJzuZZfFBaMSgcbR3Pe5zBxEC3z.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pål Sverre Hagen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gustav', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Pål Sverre Hagen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sigrid Johnson', '/4jn1H17ZB2nJgT0oVqkoaDryPTm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sigrid Johnson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anna', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Sigrid Johnson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Olle Tikkakoski Lundström', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Olle Tikkakoski Lundström');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manne', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Olle Tikkakoski Lundström';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Leon Mentori', '/1Y1niowpVEUgkXCRD4ZqGfX5YgX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Leon Mentori');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gabriel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Leon Mentori';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tone Danielsen', '/toKLCByR3MXEG1Dw05eLVzrXBTm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tone Danielsen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Astrid', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Tone Danielsen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Irma Jämhammar', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Irma Jämhammar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Liz', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Irma Jämhammar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Niklas Falk', '/1NqPIBlo9dpZJ075UzciE2TWq2b.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Niklas Falk');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arild', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Niklas Falk';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mathias Lithner', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mathias Lithner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Frank', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Mathias Lithner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lola Zackow', '/lC4qjdwr0spXDZJq4DbmZvOuEtL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lola Zackow');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Angela', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Lola Zackow';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hannu Kiviaho', '/7eqM6NVQMJVV342GdqHATCRHGg9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hannu Kiviaho');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Parking Attendant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Hannu Kiviaho';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lotten Roos', '/5hCYHezMIGv8mJlbaAuOyxDbI1G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lotten Roos');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Lotten Roos';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lotta Karlsson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lotta Karlsson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Airport Controller', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Lotta Karlsson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Misagh Sharifa', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Misagh Sharifa');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Airport Controller', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Misagh Sharifa';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anton Annerfeldt', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anton Annerfeldt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Waiter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Anton Annerfeldt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Louise Sondlo Zapata', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Louise Sondlo Zapata');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lulu', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Louise Sondlo Zapata';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Linda Kunze', '/A68t8zR7YOdrCwM84ZJAyxHKRUw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Linda Kunze');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Airplane Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Linda Kunze';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexandra Goncalvez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexandra Goncalvez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Woman in Pizzeria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1214484 AND a.name = 'Alexandra Goncalvez';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Josephine Bornebusch', '/nba2j9kEqZrFI1VdoYNXxWeK2Mv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Josephine Bornebusch');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1214484 AND d.name = 'Josephine Bornebusch';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/5QqzteriIBTWlWMLNkshTDKx9Xx.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1214484;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/lk2V8WFnAoXa44q8vqVeYyK6WJK.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1214484;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1287717, '출입금지', '2024-08-06', '', '노동자 계급 출신인 두 명의 유튜버가 콘텐츠를 만들던 중 자신들의 농구공 가방을 되찾기 위해서 버려진 저택에 들어가 장난을 치다 길을 잃고 만다. 그들은 핸드폰으로 이 깜짝 어드벤처를 찍기 시작하고, 유튜브 채널의 구독자 수를 늘리려는 욕심에 유령이 나오는 것처럼 동영상을 조작한다. 동영상은 입소문을 타고 이들은 챌린지를 시작한다. 영상 조회수가 일정 수에 도달하면 그 집에 다시 들어가기로 한 것. 밤에, 혼자, 완전히 무방비 상태로 말이다. 팬들이 호응하자 그들은 약속한 대로 다시 그 집에 간다. 그리고 그곳에 사는 이들의 진짜 정체와 함께, 자신들 역시 더 이상 산 사람이 아닐 수 있다는 사실을 깨닫는다.', 85, '15', 'RELEASED', 505.740000, 7.571000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1287717 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pablo Martínez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pablo Martínez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Pablo Martínez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lucas Caballero', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lucas Caballero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Lucas Caballero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rafael Alfaro', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rafael Alfaro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Rafael Alfaro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lara Chamorro', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lara Chamorro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Lara Chamorro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andy Romero', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andy Romero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Andy Romero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mario González Martí', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mario González Martí');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Mario González Martí';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ariel Delgadillo', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ariel Delgadillo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Ariel Delgadillo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lia Love', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lia Love');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1287717 AND a.name = 'Lia Love';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Hugo Cardozo', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Hugo Cardozo');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1287717 AND d.name = 'Hugo Cardozo';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/pi2pkIUeVk0z3iy67YKTxDjeAGr.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1287717;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/xSQjJiAYiLdpVU20iSDAQisAVJY.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1287717;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (420634, '테리파이어', '2018-01-25', '', '할로윈 밤. 술마시고 진탕 놀다 귀가하던 타라와 돈은 광대 복장의 남자와 맞닥뜨린다. 이들은 할로윈 코스프레를 한 찌질남으로 치부하지만, 그는 수년 전 세상을 떠들썩하게 만든 광대 살인마였고 할로윈 밤에 다시 돌아온 것이었다. 두 사람은 광대 살인마의 표적이 되는데...', 85, '', 'RELEASED', 548.174000, 6.385000, 416322, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 420634 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 420634 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이비드 하워드 손턴', '/9nYijs4ACzjg93zKezLiLmuRGvp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이비드 하워드 손턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Art the Clown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = '데이비드 하워드 손턴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jenna Kanell', '/xrWxxvNsZvBVHeeS3RIlhi8rGyA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jenna Kanell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tara Heyes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Jenna Kanell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Scaffidi', '/jwd0XXuc4ibXAXjOxmhsFP0fQEO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Scaffidi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria Heyes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Samantha Scaffidi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Catherine Corcoran', '/vv3hncIfLPsTj5XonPrMV4UcbPl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Catherine Corcoran');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dawn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Catherine Corcoran';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pooya Mohseni', '/k9KebLQpIfsBKAT5DUkMS5O8vOv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pooya Mohseni');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cat Lady', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Pooya Mohseni';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt McAllister', '/9QAccDN4Gsi1hGoGO35Z0yR7uq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt McAllister');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mike the Exterminator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Matt McAllister';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katie Maguire', '/e2NArSgGrpFTVxG8OrvuSSPMGCZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katie Maguire');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Monica Brown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Katie Maguire';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gino Cafarelli', '/x9sMMZ9BSL21eYXCvYuLXgM3Glr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gino Cafarelli');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Steven', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Gino Cafarelli';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cory DuVal', '/4o5ZwdIICnxxmE6kVXE9JbTAdh3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cory DuVal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Coroner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Cory DuVal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Leavy', '/i0DLFU7Y9T7IN5Ri87zWpNbXtW4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Leavy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Exterminator #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Michael Leavy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Xiomi', '/p6PuAOWevUV3UYxK38YuVNhzFSV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Xiomi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'EMT Roman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Xiomi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Erick Zamora', '/p7E98GY5G2QRxzWzNljY1DiQ9VZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Erick Zamora');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ramone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Erick Zamora';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Clifton Dunn', '/pE18JeP2JNvEgv6ERqcUSROIVK1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Clifton Dunn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Male EMT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Clifton Dunn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Julie Asriyan', '/bPEPTrw3RZFyKOtG2TwuRjnrTTa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Julie Asriyan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Julie Asriyan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Margaret Reed', '/qqXOJWPTXFFEobaoCgl2xBZQSXd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Margaret Reed');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria''s Mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Margaret Reed';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alan Hasnas', '/8f68mdxEz76FMvmqjCAJ7kY6xeA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alan Hasnas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria''s Father', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Alan Hasnas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason Leavy', '/7GJpRDFHInWanAm8hi8yPq3cJc1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason Leavy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Police Officer #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Jason Leavy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Della Salla', '/zKv92eBkjUQXrnhbFCN60Wg4big.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Della Salla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Police Officer #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Steven Della Salla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ursula Anderman', '/kEEPuRloX73L5AR8rCr3UXObrub.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ursula Anderman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vicky''s Roommate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Ursula Anderman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Rodas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Rodas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Roommate''s Boyfriend', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Daniel Rodas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dean Briscoe', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dean Briscoe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'X-Ray Technician', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Dean Briscoe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Phil Falcone', '/qXYkKPImDiwG5VmZVIHCfO2Pqu3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Phil Falcone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Phil Falcone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gloria Jung', '/bVyPMb6gvqU42zwQYzI51nYeUx5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gloria Jung');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Evelyn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Gloria Jung';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elisa Vecchio', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elisa Vecchio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Girl in Waiting Room', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Elisa Vecchio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michelle Gianchetti', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michelle Gianchetti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Girl in Hallway', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Michelle Gianchetti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joe Patrick Marshall', '/eb5Zu8wGOUqpn7Qsa6b4cTEAVUq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joe Patrick Marshall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Video Control Operator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Joe Patrick Marshall';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joe Causi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joe Causi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Radio DJ', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Joe Causi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Linda Russo', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Linda Russo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '911 Operator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Linda Russo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kamal Ahmed', '/7NjXOSMtM9LIJkVnEr3A0jvN6PG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kamal Ahmed');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man on phone (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Kamal Ahmed';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kyle Brauch', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kyle Brauch');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'News Anchor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Kyle Brauch';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kika Magalhães', '/jcooV1H5No4rJnW9rA0h2E8Twjt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kika Magalhães');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tara Double #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Kika Magalhães';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kristina Thompson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kristina Thompson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tara Double #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 420634 AND a.name = 'Kristina Thompson';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Damien Leone', '/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Damien Leone');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 420634 AND d.name = 'Damien Leone';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/sFaPj5UyIAsiRuIgVl60pCYUzmR.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 420634;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/fBNnj5bQ5YhzPUzxIW1UvLVZepP.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 420634;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1371727, '씽: Thriller', '2024-10-16', '', '버스터 문이 마이클 잭슨의 ''Thriller''에 맞춰 스타들이 총출동하는 화려한 무대를 꿈꾼다. 인기 영화 《씽》의 캐릭터들이 출연하는 단편 애니메이션.', 11, 'ALL', 'RELEASED', 652.294000, 7.400000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1371727 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1371727 AND g.name = '가족';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1371727 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1371727 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '매튜 매커너히', '/rUxLWWCDUF8RnDaocSqrVDJ2MS1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '매튜 매커너히');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Buster Moon (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = '매튜 매커너히';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '토리 켈리', '/jNKEWJf4FMac3yCK6jsM6TfFJG5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '토리 켈리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Meena (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = '토리 켈리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '닉 크롤', '/vdgpGtSXqTBnIKrKNMZocdFu7pX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '닉 크롤');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gunter (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = '닉 크롤';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '스칼렛 요한슨', '/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '스칼렛 요한슨');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ash (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = '스칼렛 요한슨';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '태런 에저턴', '/vYjk7d9MMQv8vL3rGvuBY8LI55U.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '태런 에저턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Johnny (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = '태런 에저턴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Garth Jennings', '/zl6ZWijGySSIYJRFalleAiGkxyQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Garth Jennings');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Miss Crawly (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = 'Garth Jennings';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eric Hayes', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eric Hayes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = 'Eric Hayes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katherine Kelloway', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katherine Kelloway');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = 'Katherine Kelloway';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joy Poirel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joy Poirel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = 'Joy Poirel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fisher Stevens', '/vfyZMT3t3mGTloYGrC7T3QhGkwp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fisher Stevens');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Additional Voices (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1371727 AND a.name = 'Fisher Stevens';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Garth Jennings', '/zl6ZWijGySSIYJRFalleAiGkxyQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Garth Jennings');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1371727 AND d.name = 'Garth Jennings';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/i77OInTKcrnRlAozFOaB6D5mk15.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1371727;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/m1MifWpNjOU1g8UfIyNSI2dMFZf.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1371727;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1029235, '아즈라엘', '2024-09-27', '', '종말이 일어난 지 여러 해가 지난 후, 말을 못 하는 광신도들로 구성된 종교 단체에서 탈출한 젊은 여성 아즈라엘을 추적하는 이야기. 무자비한 지도자들에게 붙잡혀 감금당한 아즈라엘은 주변 황야 깊은 곳에 숨어있는 고대의 악마를 달래기 위한 제물로 바쳐질 예정이었다. 그러나 그녀는 살기 위해 어떤 것도 주저하지 않는다. 그녀의 불타는 복수와 탈출을 위한 맹렬한 질주는 극적으로 치닫는다.', 86, '19', 'RELEASED', 639.567000, 6.100000, 631272, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1029235 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1029235 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1029235 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '사마라 위빙', '/7sHnBVEiJOzjdfzUHo9vvDLkoCH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '사마라 위빙');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Azrael', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = '사마라 위빙';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vic Carmen Sonne', '/2ROtesSqxXDT9IszpKkspsHp42O.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vic Carmen Sonne');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Miriam', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Vic Carmen Sonne';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katariina Unt', '/nJiJuzppxhOSWjCmt4tYm0vnylE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katariina Unt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Josefine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Katariina Unt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peter Christoffersen', '/tJXFLKYVnKZTE0LxrdMeERcZyL1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peter Christoffersen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Demian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Peter Christoffersen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nathan Stewart-Jarrett', '/xWd7wOIgJlxAKoIo5sgrZh6G2jl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nathan Stewart-Jarrett');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kenan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Nathan Stewart-Jarrett';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Johhan Rosenberg', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Johhan Rosenberg');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anton', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Johhan Rosenberg';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eero Milonoff', '/2U6EPXeURLuX7zQU1gD0euS8DCP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eero Milonoff');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Luther', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Eero Milonoff';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sebastian Bull Sarning', '/kXaF4zEKU8fpw9c0VkRYxxmg9gL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sebastian Bull Sarning');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Isaac', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Sebastian Bull Sarning';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rea Lest', '/lLTwtn1VWuzxGf4j1JsiV2Vym6j.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rea Lest');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Liesl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Rea Lest';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Phong Giang', '/s4Bx4cSiQHn7hevaNMZhqv6zIBV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Phong Giang');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sevrin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Phong Giang';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sonia Roszczuk', '/xM6de3KYjcBeQSSq2I9W2qKIoav.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sonia Roszczuk');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Burnt Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Sonia Roszczuk';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Valentin Tzin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Valentin Tzin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tall Burnt Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Valentin Tzin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vincent Willestrand', '/yOb8mC1Ymtcp5N8eSVV27DGuAEe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vincent Willestrand');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Leon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Vincent Willestrand';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Karen Bengo', '/8gGVgq4WS7AM5J1p4zudw4nmhpj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Karen Bengo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Esmeralda', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Karen Bengo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Felix Leech', '/w9uZTXj23jMJ4Is81UUVGp5Tf9w.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Felix Leech');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thin Burnt Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Felix Leech';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ekke Märten Hekles', '/emwPiu2aDKLbbns0Eejakul668Y.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ekke Märten Hekles');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mid-Ground Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Ekke Märten Hekles';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robin Liksor', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robin Liksor');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mid-Ground Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Robin Liksor';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Karl Edgar Tammi', '/nwhS50Z974vI61KrbO3Hgys2fMq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Karl Edgar Tammi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mid-Ground Burnt Person / Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Karl Edgar Tammi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Boyan Anev', '/yG0iiY8vGw5r0eo2b7WajIwU2qU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Boyan Anev');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mid-Ground Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Boyan Anev';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Roger Purtsak', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Roger Purtsak');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Background Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Roger Purtsak';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Edgar Rahhimov', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Edgar Rahhimov');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Background Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Edgar Rahhimov';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marten Frank', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marten Frank');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Background Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Marten Frank';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jan-Erik Sedrik', '/7I5reCi25ELl5ecTOmLaEy2cGtK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jan-Erik Sedrik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Background Burnt Person', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Jan-Erik Sedrik';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elvira Erli', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elvira Erli');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Josefine''s Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Elvira Erli';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kaire Sõmer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kaire Sõmer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Kaire Sõmer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Eliisabet Estrid Somer', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Eliisabet Estrid Somer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kid', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Eliisabet Estrid Somer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alisa Merkurieva', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alisa Merkurieva');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Alisa Merkurieva';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andreas Ainjärv', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andreas Ainjärv');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Andreas Ainjärv';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Anne Türnpu', '/cEJvD353n3fGtxgCLgkoplhCya5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Anne Türnpu');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Anne Türnpu';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Christopher Das Raaj', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Christopher Das Raaj');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Christopher Das Raaj';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Claudia Isabel Lopez Ortiz', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Claudia Isabel Lopez Ortiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Claudia Isabel Lopez Ortiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Amanyo', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Amanyo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Daniel Amanyo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dmitry Merkuriev', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dmitry Merkuriev');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Dmitry Merkuriev';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ege Berk Akgün', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ege Berk Akgün');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Ege Berk Akgün';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ene Pappel', '/2VMkuRjMjllZOavCKtiM13wvuvv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ene Pappel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Ene Pappel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Helin Rääk', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Helin Rääk');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Helin Rääk';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Janek Karakatš', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Janek Karakatš');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Janek Karakatš';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jegor Sevastjanov', '/a2OfYSmLAHRYBiwQAs1v7gF7WMz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jegor Sevastjanov');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Jegor Sevastjanov';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jekaterina Meinert', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jekaterina Meinert');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Jekaterina Meinert';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Johanna Vaiksoo', '/89UASmhjT7LGimTSyQW0JV3Izan.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Johanna Vaiksoo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Johanna Vaiksoo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jörgen Liik', '/dCXskAwSouB9CkzLQtTvoohGHxT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jörgen Liik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Jörgen Liik';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Klaus Abram Siimon', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Klaus Abram Siimon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Klaus Abram Siimon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Konstantin Aleksejev', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Konstantin Aleksejev');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Konstantin Aleksejev';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lenna Lii Kuuskla', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lenna Lii Kuuskla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Lenna Lii Kuuskla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Liis Maria Kaabel', '/aSxTvM990iPWRcRmcupGoXAyvZo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Liis Maria Kaabel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Liis Maria Kaabel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lisette Malla', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lisette Malla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Lisette Malla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maarja Tammemägi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maarja Tammemägi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Maarja Tammemägi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Madis Laur', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Madis Laur');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Madis Laur';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marion Tammet', '/qJdsj3aSBLXSH6xzgnSgdoCdcqV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marion Tammet');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Marion Tammet';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martin Köstner', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martin Köstner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Martin Köstner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Meelis Rämmeld', '/8dWWOsorM0Uk6qDtTxdZvDeuLIG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Meelis Rämmeld');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Meelis Rämmeld';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mia Moore', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mia Moore');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Mia Moore';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Priit Kesa', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Priit Kesa');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Priit Kesa';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Reena Uusmets', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Reena Uusmets');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Reena Uusmets';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sergei Pozdniakov', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sergei Pozdniakov');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Sergei Pozdniakov';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Silva Pijon', '/t96Lk8ywGILFG5oHs0e7xnpC2fK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Silva Pijon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Silva Pijon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Silver Soorsk', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Silver Soorsk');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Silver Soorsk';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sirelyn Rääk', '/9rnxNgajLfJyd5VNPzkaWvEE9cT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sirelyn Rääk');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Sirelyn Rääk';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sofia Kruusamägi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sofia Kruusamägi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Sofia Kruusamägi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stefan Hein', '/5Qa7K0DKtPExMjFxZ2LDG13PIPm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stefan Hein');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Stefan Hein';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vivek Tyagi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vivek Tyagi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Villager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1029235 AND a.name = 'Vivek Tyagi';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'E.L. Katz', '/y0QSBve9p7NZ3KR3RpPhDSlFp4P.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'E.L. Katz');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1029235 AND d.name = 'E.L. Katz';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/qpdFKDvJS7oLKTcBLXOaMwUESbs.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1029235;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/uLqNGzJwnj8JKkKuRM2dHWJKCtc.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1029235;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (663712, '테리파이어 2', '2022-10-06', '', '악명 높은 마일즈 카운티 대학살 이후 1년, 연쇄 살인마 ‘아트 더 크라운’이 한 유가족을 해치기 위해 다시 돌아온다. 악령의 환영에 이끌린 채, 살인마는 한 십대 소녀와 그녀의 남동생을 노린다. 악몽과 현실의 경계가 모호해질 수록 살인은 증가한다. 남매는 그들을 구원으로 이끌 한 가족의 비밀을 발견하고 ‘아트 더 크라운’의 학살을 멈추려한다.', 138, '18', 'RELEASED', 514.813000, 6.750000, 15740003, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 663712 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 663712 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '데이비드 하워드 손턴', '/9nYijs4ACzjg93zKezLiLmuRGvp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '데이비드 하워드 손턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Art the Clown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = '데이비드 하워드 손턴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '로렌 라베라', '/qJYWq2oZcvHh7lnGskxkrYXCom0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '로렌 라베라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sienna Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = '로렌 라베라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elliott Fullam', '/dNsFLihmWfA2KCENbZCtq9AjSob.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elliott Fullam');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jonathan Shaw', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Elliott Fullam';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sarah Voigt', '/7OR1UUn0DrDykNcxakYkpxW5I1Z.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sarah Voigt');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbara', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Sarah Voigt';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kailey Hyman', '/aiREJkXiIT2GIzZcl6M9LPOFbuI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kailey Hyman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brooke', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Kailey Hyman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Casey Hartnett', '/jR87afncFCLivW82l2tlk3CkY5Y.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Casey Hartnett');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Allie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Casey Hartnett';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlie McElveen', '/rxUa628mOE5XSsAHzAGO5bqw8oU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlie McElveen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jeff', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Charlie McElveen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amelie McLain', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amelie McLain');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Little Pale Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Amelie McLain';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Johnath Davis', '/6vWkGc5MUpEORdelXjsW7u3LDC1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Johnath Davis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ricky', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Johnath Davis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Scaffidi', '/jwd0XXuc4ibXAXjOxmhsFP0fQEO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Scaffidi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Victoria Heyes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Samantha Scaffidi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Leah Voysey', '/asyDhgNyXHaolbHT6hduMJS0jxY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Leah Voysey');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clown Cafe Host / Nurse', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Leah Voysey';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chris Irvine', '/n9A6gsBCwvsF4KcEABU3lHp3jXU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chris Irvine');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Burke', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Chris Irvine';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Felissa Rose', '/PEiMOmcnhRJGlrOXxD2bSrRc37.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Felissa Rose');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ms. Principe', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Felissa Rose';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Owen Myre', '/vcaXQmjSkhkVZ9wJ1DNSFPop2Y7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Owen Myre');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sean', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Owen Myre';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Griffin Santopietro', '/17qhVXBdsFh7AsuHGCRJGPJgsD1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Griffin Santopietro');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eric', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Griffin Santopietro';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Devon Roth', '/1CY5jlGOlqWM4AyvpUtqiNrm5o3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Devon Roth');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stephanie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Devon Roth';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amy Russ', '/rEvWZlZtY42a7tZl6Arr9kl4BC4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amy Russ');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Allie''s Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Amy Russ';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Cory DuVal', '/4o5ZwdIICnxxmE6kVXE9JbTAdh3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Cory DuVal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Coroner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Cory DuVal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Staci Dickerson', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Staci Dickerson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Principal', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Staci Dickerson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marisa Bertani', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marisa Bertani');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'News Anchor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Marisa Bertani';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tamara Glynn', '/9hH8uczz8HvNFkI9I8jYrPU1htx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tamara Glynn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Costume Shop Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Tamara Glynn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Reid Richards', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Reid Richards');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Costume Shop Son', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Reid Richards';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sarah Grace Sanders', '/jgcOHFGrse4TluVYl4DbYjQ7EtT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sarah Grace Sanders');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Scarecrow Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Sarah Grace Sanders';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ava O''Donnell', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ava O''Donnell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Scarecrow Girl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Ava O''Donnell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Briana Calcagno', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Briana Calcagno');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trick or Treaters Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Briana Calcagno';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Katie Maguire', '/e2NArSgGrpFTVxG8OrvuSSPMGCZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Katie Maguire');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Monica Brown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Katie Maguire';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gilbrando Acevedo', '/mMYpVQEJ5NpSMlL0TT118DqG521.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gilbrando Acevedo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Truant Officer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Gilbrando Acevedo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mark A. Langston', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mark A. Langston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Whalen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Mark A. Langston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Wesley Holloway', '/3PcwUCcn7B3PKgwDhJwzYiiVAUX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Wesley Holloway');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cereal Commercial Kid', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Wesley Holloway';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Geordie McGillivray', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Geordie McGillivray');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clown Cafe Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Geordie McGillivray';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rob Gabriele', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rob Gabriele');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clown Cafe Guest', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Rob Gabriele';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Phil Falcone', '/qXYkKPImDiwG5VmZVIHCfO2Pqu3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Phil Falcone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clown Cafe Executive', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Phil Falcone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Thomas Rickman', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Thomas Rickman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clown Cafe Pilot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Thomas Rickman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Thomas Smith', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Thomas Smith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man in Laundromat', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Thomas Smith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miche Brill', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miche Brill');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Convenient Store Shopper 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Miche Brill';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sarah Brill', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sarah Brill');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Convenient Store Shopper 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Sarah Brill';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robert Privitera', '/2SLKli50s4dKthc9FoVyI8kBADp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robert Privitera');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Obnoxious Male Teenager', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Robert Privitera';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rachel Keefe', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rachel Keefe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Obnoxious Female Teenager 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Rachel Keefe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jamie Root', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jamie Root');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Obnoxious Female Teenager 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Jamie Root';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Scott Klausen', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Scott Klausen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Costume Shop Patron', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Scott Klausen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jenna Kanell', '/xrWxxvNsZvBVHeeS3RIlhi8rGyA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jenna Kanell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tara Heyes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Jenna Kanell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Catherine Corcoran', '/vv3hncIfLPsTj5XonPrMV4UcbPl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Catherine Corcoran');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dawn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Catherine Corcoran';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gino Cafarelli', '/x9sMMZ9BSL21eYXCvYuLXgM3Glr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gino Cafarelli');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Steven', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Gino Cafarelli';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt McAllister', '/9QAccDN4Gsi1hGoGO35Z0yR7uq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt McAllister');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mike the Exterminator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Matt McAllister';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Erick Zamora', '/p7E98GY5G2QRxzWzNljY1DiQ9VZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Erick Zamora');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ramone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Erick Zamora';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Damien Leone', '/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Damien Leone');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Queen Phoenix', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Damien Leone';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rick Styczynski', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rick Styczynski');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Selfie Guy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Rick Styczynski';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Loren W. Lepre', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Loren W. Lepre');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The DJ', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Loren W. Lepre';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michael Leavy', '/i0DLFU7Y9T7IN5Ri87zWpNbXtW4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michael Leavy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'DJ (voice) / Club Announcer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Michael Leavy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Michelle Santiago', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Michelle Santiago');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Club Waitress', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Michelle Santiago';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ryan James', '/46CzCk6YJrT7ja2IWScM7ARNcYf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ryan James');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bow Tie Guy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Ryan James';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ross Caudill Jr.', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ross Caudill Jr.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Devil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Ross Caudill Jr.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matthew Hammond', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matthew Hammond');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Hotdog', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Matthew Hammond';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jonathan A. Streetzel', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonathan A. Streetzel');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '9th Circle Demon 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Jonathan A. Streetzel';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Craig Sapenoff', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Craig Sapenoff');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '9th Circle Demon 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Craig Sapenoff';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jackie Adragna', '/ymE4jbVqP0rG3eFcGrySmVd7sJu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jackie Adragna');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Jackie Adragna';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Kiseleski', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Kiseleski');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Zombie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Steven Kiseleski';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Johnny Ferri', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Johnny Ferri');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Gladiator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Johnny Ferri';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joshua Kirpach', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joshua Kirpach');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Vampire', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Joshua Kirpach';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sheri Fairchild', '/kCDPioG3YTLkjdexkJNpge6rtNO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sheri Fairchild');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Bar Patron', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Sheri Fairchild';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason Leavy', '/7GJpRDFHInWanAm8hi8yPq3cJc1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason Leavy');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Police Officer 1 (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Jason Leavy';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Della Salla', '/zKv92eBkjUQXrnhbFCN60Wg4big.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Della Salla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Police Officer 2 (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Steven Della Salla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elizabeth Piper S.', '/nJaQVLXLGgaxZgrXXPmtNrlTT7e.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elizabeth Piper S.');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Party Goer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Elizabeth Piper S.';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marcus Slabine', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marcus Slabine');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nightclub Bartender', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 663712 AND a.name = 'Marcus Slabine';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Damien Leone', '/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Damien Leone');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 663712 AND d.name = 'Damien Leone';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/8gLhu8UFPZfH2Hv11JhTZkb9CVl.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 663712;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/cRdA9xjHBbobw4LJFsQ3j1CgpVq.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 663712;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (827931, '타임 컷', '2024-10-29', '', '한 십 대 소녀가 시간을 거슬러 2024년에서 2003년으로 돌아간다. 언니가 마스크를 쓴 살인마에게 살해당하기 며칠 전으로 돌아간 소녀. 과연 미래를 파괴하지 않고 과거를 바꿀 수 있을까?', 90, '15', 'RELEASED', 464.432000, 5.700000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 827931 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 827931 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 827931 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '매디슨 베일리', '/7sCoQ7hsoQ92v3X1O1JO8ueWjMI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '매디슨 베일리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lucy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '매디슨 베일리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '앤터니아 젠트리', '/2XgTZZS6gPqUPN6cSXnFNR1OkxO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '앤터니아 젠트리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Summer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '앤터니아 젠트리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '그리핀 글럭', '/j7KSBKYLgnLxkZfhQ679HRSDIjj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '그리핀 글럭');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Quinn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '그리핀 글럭';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '메간 베스트', '/w3M6fxedhJTCXCxcv7U4mJIoTs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '메간 베스트');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emmy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '메간 베스트';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마이클 섕크스', '/4YkOrSUmfKljqTMwGIo50oviKe1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마이클 섕크스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '마이클 섕크스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레이철 크로퍼드', '/7YtWW02HKyxx1sGpVnRxVgZyEoE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레이철 크로퍼드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kendra', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '레이철 크로퍼드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '섬머 H. 하웰', '/x5kNBofVWhE0fDY9r89gi5LsNGh.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '섬머 H. 하웰');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jessica', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = '섬머 H. 하웰';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sydney Sabiston', '/qyevjClUb3AXbOhswrD7MGGY3zd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sydney Sabiston');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Val', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Sydney Sabiston';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adam Hurtig', '/sJ0RxYecZCJ5zybOsQjTedhMwp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adam Hurtig');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Deputy Craven', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Adam Hurtig';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gwendolyn Collins', '/rd2RHG9lj8fAE0HpwX1CZDNx9Pu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gwendolyn Collins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Coach Jackie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Gwendolyn Collins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samuel Braun', '/yZTxOPN7fXO1n3PlqiJLyQIuEhS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samuel Braun');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ethan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Samuel Braun';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kataem O''Connor', '/9OGFa2tehdHPUyACwYcCxJtvNXm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kataem O''Connor');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Brian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Kataem O''Connor';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jordan Pettle', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jordan Pettle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mr. Fleming', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Jordan Pettle';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'BJ Verot', '/z7w65HwJSR5AIosjJQiNqohyNt7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'BJ Verot');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Slasher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'BJ Verot';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elena Howard-Scott', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elena Howard-Scott');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Store Clerk', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Elena Howard-Scott';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dutchess Cayetano', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dutchess Cayetano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Flash Mob Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Dutchess Cayetano';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Francesca Tomassoni', '/dXxexeSaOZ1tyhWNezZJCSub6YJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Francesca Tomassoni');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tesla Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Francesca Tomassoni';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Colleen Furlan', '/i2uo49BItVX0TzBuHtwXLGsXEmj.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Colleen Furlan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Flash Mob Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Colleen Furlan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tyrell Witherspoon', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tyrell Witherspoon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Flash Mob Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Tyrell Witherspoon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samantha Hutchings', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samantha Hutchings');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Flash Mob Dancer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Samantha Hutchings';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joseph Clowser', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joseph Clowser');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tesla Man', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Joseph Clowser';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Connor Chennells', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Connor Chennells');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Student', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Connor Chennells';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jim Kirby', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jim Kirby');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Restaurant Patron', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Jim Kirby';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marina Stephenson Kerr', '/sLEOfwtdFCzpemIhOmpB1xpz6p0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marina Stephenson Kerr');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mrs. T', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 827931 AND a.name = 'Marina Stephenson Kerr';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Hannah Macpherson', '/oEdhRg9GDWvKdht4TEjRrtHmMNO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Hannah Macpherson');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 827931 AND d.name = 'Hannah Macpherson';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/59k1QVE0fiDJWqoGGKS8TcTqZPI.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 827931;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/qYvOcinXcnebhmCxYeivurh91T1.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 827931;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1063877, '돈 무브', '2024-10-24', '', '사랑하는 이를 잃은 슬픔을 달래려 외딴 숲을 찾은 여자. 우연히 마주친 살인마에게 마비성 약물을 주입당하는데. 온몸이 점점 마비되어 가는 가운데, 그녀의 생존을 건 싸움이 시작된다.', 92, '19', 'RELEASED', 463.960000, 6.464000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1063877 AND g.name = '스릴러';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1063877 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kelsey Asbille', '/8mXqxKaPc6FpAnLeZlPaaUaJHdC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kelsey Asbille');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Iris', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Kelsey Asbille';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Finn Wittrock', '/gwGMGTmli0uBF7eAhhXePWhYNFJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Finn Wittrock');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Richard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Finn Wittrock';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '대니얼 프랜시스', '/ltLYFcQHcaS5wdxX085Lhn0vX5v.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '대니얼 프랜시스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dontrell', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = '대니얼 프랜시스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Moray Treadwell', '/hmaqML3iwGouEACUzjWDBJN6Sdz.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Moray Treadwell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bill', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Moray Treadwell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dylan Beam', '/udzwdodFTx4dvfwoyUX4sU5XdNL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dylan Beam');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Daughter (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Dylan Beam';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kate Nichols', '/l3xIf1uuk0ziE81NM87BVh8UyVv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kate Nichols');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Kate Nichols';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Skye Little Wing Dimova-Saw', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Skye Little Wing Dimova-Saw');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Boy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Skye Little Wing Dimova-Saw';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Denis Kostadinov', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Denis Kostadinov');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mateo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1063877 AND a.name = 'Denis Kostadinov';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Adam Schindler', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Adam Schindler');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1063877 AND d.name = 'Adam Schindler';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Brian Netto', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Brian Netto');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1063877 AND d.name = 'Brian Netto';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/oYWAVAhvpB9CmlJuZD3n23vEgiU.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1063877;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/6Rjsm5khNaYa4Gnw4iHnGX2E34T.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1063877;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (917496, '비틀쥬스 비틀쥬스', '2024-09-04', '산 자와 죽은 자, 누가 남을 것인가!', '유령과 대화하는 영매로 유명세를 타게 된 리디아와 그런 엄마가 마음에 들지 않는 10대 딸 아스트리드. 할아버지 찰스의 갑작스러운 죽음으로 가족들은 함께 시골 마을에 내려간다. 유령을 보는 엄마가 마음에 들지 않는 아스트리드는 방황하던 중 함정에 빠져 저세상에 발을 들이게 되고 딸을 구하기 위해 리디아는 인간을 믿지 않는 저세상 슈퍼스타 비틀쥬스를 소환한다. 이루지 못한 리디아와의 결혼을 조건으로 내민 비틀쥬스. 이번엔 아스트리드가 비틀쥬스를 다시 저세상으로 보내야 하는데···', 105, '12', 'RELEASED', 616.277000, 7.100000, 445300598, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 917496 AND g.name = '코미디';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 917496 AND g.name = '판타지';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 917496 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마이클 키튼', '/82rxrGxOqQW2NjKsIiNbDYHFfmb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마이클 키튼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Beetlejuice', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '마이클 키튼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '위노나 라이더', '/nRB8LDsteteDJoUZPKLtu134GsS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '위노나 라이더');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lydia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '위노나 라이더';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '캐서린 오하라', '/cMBxHeztNVc8YXKcj084Mdd3f3U.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '캐서린 오하라');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Delia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '캐서린 오하라';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제나 오르테가', '/q1NRzyZQlYkxLY07GO9NVPkQnu8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제나 오르테가');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Astrid', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '제나 오르테가';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '저스틴 서로', '/vnI9L0rXBAw1HeC0Q8hJGeJMGAW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '저스틴 서로');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rory', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '저스틴 서로';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '윌렘 대포', '/ui8e4sgZAwMPi3hzEO53jyBJF9B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '윌렘 대포');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jackson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '윌렘 대포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '모니카 벨루치', '/7g3k3u2gZpE7XU8GRYwHDuN1jlM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '모니카 벨루치');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Delores', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '모니카 벨루치';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Arthur Conti', '/pnO8qBwvLJfN54UaKsy0QQlAc8u.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Arthur Conti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jeremy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Arthur Conti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nick Kellington', '/dljWanF16l05CcKY0ePepvz3PIZ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nick Kellington');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bob - Shrinker', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Nick Kellington';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Santiago Cabrera', '/ig1nyOlNKXsRy8xggYPLMcohpJA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Santiago Cabrera');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Richard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Santiago Cabrera';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '번 고먼', '/nl5V2mpfTnp8YSShtVYjgNjnv4M.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '번 고먼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Father Damien', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '번 고먼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '대니 드비토', '/6kO4IN7ndoIGw2JhyhAQN3SFmdx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '대니 드비토');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Janitor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '대니 드비토';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sami Slimane', '/r1Hg1WPyp26oLj3im3P80GEENpx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sami Slimane');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Le Tigre', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Sami Slimane';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Amy Nuttall', '/uQS399fI8KdUgWKu3JtQi4xjInt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Amy Nuttall');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jane Butterfield', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Amy Nuttall';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mark Heenehan', '/k3rgwJFLEfLN1F4e9LQiWu0WuxX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mark Heenehan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clive', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Mark Heenehan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Charlie Hopkinson', '/qTZazkUuOBKahoomlSNGw7iQwEE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Charlie Hopkinson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clive (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Charlie Hopkinson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Liv Spencer', '/u1GeaYTXQf6U7JAlVVQmxUUFVZ2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Liv Spencer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Olga', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Liv Spencer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Skylar Park', '/o1cVL7s63IMEpldUxq5ei0W9R95.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Skylar Park');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Littler Jane', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Skylar Park';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matt Lyons', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matt Lyons');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dave - Shrinker', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Matt Lyons';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jane Leaney', '/pDMlghXzz9XyKbdWQrHn0isFyLr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jane Leaney');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jeremy''s Mom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Jane Leaney';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Ayres', '/rzNBYxkL6RUI7H6ExZWn1r4peA3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Ayres');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jeremy''s Dad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'David Ayres';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sophie Holland', '/4jgFpA6Ka1U84H4TQ9SgMgh7iTs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sophie Holland');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hot Dog Lady on a Stick', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Sophie Holland';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Walles Hamonde', '/uoKuXFqmL7uwjJro1runny5N822.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Walles Hamonde');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Glen - Director', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Walles Hamonde';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Max Pemberton', '/p1nE8KFIQQ0227mBKX8FlQVbA8D.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Max Pemberton');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Surfer Dude', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Max Pemberton';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rebecca O''Mara', '/uIlgKmFDIp5jWuBaGlkeCTor4Cn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rebecca O''Mara');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jody Welch', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Rebecca O''Mara';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adam Speers', '/p8Hi0FpWWd10HNGlbF8JVoOmFz6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adam Speers');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emmet Welch', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Adam Speers';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daryl Kwan', '/nsNsZnp0am1cW1BgUZHgN2rharw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daryl Kwan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eddy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Daryl Kwan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Caroline Lawrie', '/w2KjabyRW60ypuCzVPNI7Yq1XLi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Caroline Lawrie');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dead Cat Lady', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Caroline Lawrie';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Philip Philmar', '/z9QWTyjPFTuMMUX7uzDUrpLsjCw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Philip Philmar');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hooded Pagan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Philip Philmar';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stephen K. Amos', '/7rE07wLicCw50vwxV2m5He9NOfp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stephen K. Amos');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Conductor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Stephen K. Amos';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sean Verre', '/8EoXL015PUCfBvWLRSZ0oNYykfK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sean Verre');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Josh', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Sean Verre';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Noah Mendes', '/9kgtQm9p5aj1FcvEjNi5XKb1mtR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Noah Mendes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ethan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Noah Mendes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Juliana Yazbeck', '/gs7NgrDqxsv3zg9q4lh521H3drV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Juliana Yazbeck');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mummy Immigration Officer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Juliana Yazbeck';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bea Svistunenko', '/amHwh4xA5Co2jDQrKqH9NUyCEWQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bea Svistunenko');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nadia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Bea Svistunenko';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Filipe Cates', '/w4r33i0EtWIBXNOIBkujZboGCkw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Filipe Cates');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vlad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Filipe Cates';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alex Michael Stoll', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alex Michael Stoll');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'TV Interviewer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Alex Michael Stoll';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rupi Lal', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rupi Lal');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Astrid''s Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Rupi Lal';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Georgina Beedle', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Georgina Beedle');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jackson''s Secretary', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Georgina Beedle';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Stefano Marchetti', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Stefano Marchetti');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Italian Narrator (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Stefano Marchetti';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Fisher', '/wdTQ7dif4N72Ijxp6vdxxBK95UP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Fisher');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Detective (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'James Fisher';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ian Hawkins', '/jkazNB5gi202nlnO16j306Dt3WQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ian Hawkins');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Funeral Mourner (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = 'Ian Hawkins';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '팀 버튼', '/wcjuY5vD1nlfwWNbvvTGg5dGoRR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '팀 버튼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baby Beetlejuice (voice) (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 917496 AND a.name = '팀 버튼';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '팀 버튼', '/wcjuY5vD1nlfwWNbvvTGg5dGoRR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '팀 버튼');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 917496 AND d.name = '팀 버튼';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/ypWQatJYyESE5PIzdlSdiOyWYja.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 917496;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/xi1VSt3DtkevUmzCx2mNlCoDe74.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 917496;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1125510, '더 플랫폼 2', '2024-09-27', '', '수직 구조로 된 감방. 정체 모를 리더가 잔혹한 시스템에 자체적인 규범을 도입시키고, 이후 새로운 인물이 나타나 수상한 배급 방식에 대해 반기를 든다.', 100, '19', 'RELEASED', 497.754000, 5.654000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1125510 AND g.name = 'SF';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1125510 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Milena Smit', '/aD7RhtQZZ6adyPiy4jp3RB4DhEs.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Milena Smit');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Perempuán', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Milena Smit';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hovik Keuchkerian', '/o5cGKWHlZl4RFROYlT2hD95j0lN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hovik Keuchkerian');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zamiatin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Hovik Keuchkerian';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Natalia Tena', '/7kN9NpECZoR4NLXb4SlpHOaJx7T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Natalia Tena');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sahabat', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Natalia Tena';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '오스카르 하에나다', '/qwphNLIwMyQW2ZLA0g0l1zFiB3w.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '오스카르 하에나다');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dagin Babi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = '오스카르 하에나다';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivan Massagué', '/dmnJo2sGlfFjtKb8FDPlNjRhfyc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivan Massagué');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Goreng', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Ivan Massagué';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Zorion Eguileor', '/vKv31N3RKzwd82REqsl37aOeXcr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Zorion Eguileor');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trimagasi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Zorion Eguileor';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bastien Ughetto', '/8GA4akSNMCYCVE3uOBkDP2qHkSY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bastien Ughetto');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Robespierre', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Bastien Ughetto';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Armando Buika', '/4LIXUqGXFnxfPAizvhNzUULCfex.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Armando Buika');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbarian Level 73', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Armando Buika';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Pedro Bachura', '/bgOGxlpen6HoJUXPEkL1kZrCvdR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Pedro Bachura');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbarian Level 54', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Pedro Bachura';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Antonia San Juan', '/mkSeuTL8cTGWfvunH5Jg4YTGvCf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Antonia San Juan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Imoguiri', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Antonia San Juan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexandra Masangkay', '/iwbCGsSwxkBgJFs90F2PCHJsGpP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexandra Masangkay');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Miharu', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Alexandra Masangkay';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emilio Buale', '/fh5hrdqgNoahnMMdt5UK6sZbarV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emilio Buale');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Baharat', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Emilio Buale';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Albert Pla', '/zND6odCRSkLJMWxpy1QfCk7axtA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Albert Pla');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Albert Pla';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gorka Zufiaurre', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gorka Zufiaurre');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Down Syndrome Prisoner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Gorka Zufiaurre';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ken Appledorn', '/sGXuvMY9yqG6iddlhn2C69qtTo6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ken Appledorn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Loyalist Level 52', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Ken Appledorn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hoji Fortuna', '/hfsnAuwMM9sP4l0Uh0Is01pRMj2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hoji Fortuna');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man Level 52', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Hoji Fortuna';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mariamu Toure', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mariamu Toure');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Woman Level 23', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Mariamu Toure';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sesinou Henriette', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sesinou Henriette');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dagin''s Lieutenant', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Sesinou Henriette';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Patty Bonet', '/pt5MZuJiyeQnAMHJvNgkyusYMTf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Patty Bonet');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Blonde Woman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Patty Bonet';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Txaro Kandler', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Txaro Kandler');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbarian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Txaro Kandler';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miriam K. Martxante', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miriam K. Martxante');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cook #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Miriam K. Martxante';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Miren Gaztañaga', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Miren Gaztañaga');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cook #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Miren Gaztañaga';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Irene Bau', '/hY2jCxtiaSANYDyypZ7Ejn5WpD4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Irene Bau');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Irene Bau';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Inge Ladd', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Inge Ladd');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Inge Ladd';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Malick Thiaw', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Malick Thiaw');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Malick Thiaw';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fran Cantos', '/unQdEqPeJFalYyp8y8mXLkNLvNE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fran Cantos');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Fran Cantos';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tadashi Ito', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tadashi Ito');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Barbarian Level 21', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Tadashi Ito';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Abel Vitón', '/h9UM4lWFdJxTSiv4NZjMvYvm7Cr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Abel Vitón');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Abel Vitón';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joan Esteve', '/gra4JVHaFRA2DcW6ddQpeAOZzpl.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joan Esteve');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Joan Esteve';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mila Espiga', '/s2uDAIAQ90ypMAbmojeozecPiGf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mila Espiga');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Mila Espiga';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ainhoa Artetxe', '/gCodSmrUd3ostW5nFwqAqsiy75j.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ainhoa Artetxe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Ainhoa Artetxe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Maria Urcelay Eguia', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Maria Urcelay Eguia');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1125510 AND a.name = 'Maria Urcelay Eguia';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '갈데르 가스텔루-우루티아', '/rAPQ6GjKHbmD0zuwizhu5g3GlCB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '갈데르 가스텔루-우루티아');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1125510 AND d.name = '갈데르 가스텔루-우루티아';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/poELZsrROLJW28gc1V9nB1kJigq.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1125510;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/epQfhIcfqWgrMhRvnxkVm7EeEpE.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1125510;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (179387, 'Heavenly Touch', '2009-05-12', '', '', 89, '', 'RELEASED', 590.204000, 6.310000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 179387 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 179387 AND g.name = '로맨스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paolo Serrano', '/nZhbmyjaQSAshWtQ3GlQxE3oOGH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paolo Serrano');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rodel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Paolo Serrano';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joash Balejado', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joash Balejado');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jonard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Joash Balejado';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marco Morales', '/slIb6dJVStEngxKC6Z4QJShP3xm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marco Morales');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Biboy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Marco Morales';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gwen Garci', '/8ul2ti0wMAEPty5Gmc3QVXdUJWt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gwen Garci');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sheila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Gwen Garci';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paolo Rivero', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paolo Rivero');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sandy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Paolo Rivero';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jeffrey Santos', '/tbuW0ljQMsLUlKb9AuGimzy89Ap.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jeffrey Santos');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sir Tong', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Jeffrey Santos';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jim Pebanco', '/hP8AVbNtPh0noJZvakRdkXrNlpu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jim Pebanco');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mama Orange', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Jim Pebanco';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Irma Adlawan', '/jISx5lYn0BBwsAz3jrwtJizQUGB.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Irma Adlawan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lydia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Irma Adlawan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'John Apacible', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'John Apacible');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mayor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'John Apacible';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Raquel Villavicencio', '/b2qpWPseXzjqRudzK7DIRE5qpMw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Raquel Villavicencio');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Raquel Villavicencio';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alcris Galura', '/dZUKAjfjXdAiCxNZHX1WbV0WqZE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alcris Galura');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gerry', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 179387 AND a.name = 'Alcris Galura';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Joel Lamangan', '/lKEVNg8HFfsGrfzHxGZjLHVQ5ir.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Joel Lamangan');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 179387 AND d.name = 'Joel Lamangan';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/ory8WuAqznTE7lfopTSymHpop2t.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 179387;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/9msuazXGWAyl7vhxVFU7e7Bb5Ik.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 179387;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1100856, 'Заклятье. Шепот ведьм', '2024-06-13', '', '', 90, '', 'RELEASED', 685.097000, 4.700000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1100856 AND g.name = '공포';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1100856 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Артур Бесчастный', '/yI8CXyhep0WWU7juFBUTN6MRyUY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Артур Бесчастный');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Пол', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Артур Бесчастный';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Марьяна Спивак', '/rCCiNJW5CROYGSJtPbGsEUN1Ehe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Марьяна Спивак');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'София', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Марьяна Спивак';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Софья Шидловская', '/t7n0y5pS5JLvsQfb7OEF9mNc0de.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Софья Шидловская');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Яна', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Софья Шидловская';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Игорь Грабузов', '/6QtMjf3suh9Y8T5dBx5udR0bbwI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Игорь Грабузов');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ник', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Игорь Грабузов';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Сергей Сафронов', '/4a6do04xgHTlIChDFULBX5aD67m.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Сергей Сафронов');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Артур', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Сергей Сафронов';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Valeria Kot', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Valeria Kot');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Джули', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Valeria Kot';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Илья Виногорский', '/9VDO7Efjb6W7pdWILme2bMVxwX3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Илья Виногорский');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Рон', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Илья Виногорский';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kirill Rusin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kirill Rusin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Кевин', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Kirill Rusin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Артём Фадеев', '/pI4Rk1HfsPRWrgCysSgVO32YMKP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Артём Фадеев');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Артём Фадеев';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marina Grishakova', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marina Grishakova');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Marina Grishakova';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ravil Batyrov', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ravil Batyrov');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Ravil Batyrov';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Иван Рысин', '/6tvkAjCp16i5SR2FONuW07unKgG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Иван Рысин');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Иван Рысин';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Семён Дорин', '/erGWCxPbAIyLVqgozeW8zioy29d.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Семён Дорин');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Семён Дорин';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kolya Neukoelln', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kolya Neukoelln');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Kolya Neukoelln';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Кирилл Якушенко', '/kdmEjNsZmy163FfsEyDtS1Rk2g4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Кирилл Якушенко');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Кирилл Якушенко';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Elena Ageeva', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Elena Ageeva');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Elena Ageeva';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Aleksey Lysenko', '/4jBUu20XMXeOesuzrlom7fX6Gmy.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Aleksey Lysenko');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Aleksey Lysenko';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ivan Goryachev', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ivan Goryachev');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Ivan Goryachev';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrey Knyazev', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrey Knyazev');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Andrey Knyazev';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Максим Иванов', '/g1pUAREkRioNFh14AupT8LAj7N0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Максим Иванов');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1100856 AND a.name = 'Максим Иванов';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Serik Beyseu', '/5cYbNPD2hioVi47CFWp4Y20TOFq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Serik Beyseu');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1100856 AND d.name = 'Serik Beyseu';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/um3n8rQbr97uaGB2058TsktPtAy.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1100856;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/xPVhaMMUZq1yclf4kCEYwJ1Cqr6.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1100856;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1159311, '나의 히어로 아카데미아 더 무비: 유어 넥스트', '2024-08-02', '평화의 상징에 도전하라', '“다음은 너다” 초자연능력 ‘개성’을 가진 인간이 당연해진 세계에서 옛 ‘평화의 상징’ NO.1 히어로 ‘올마이트’가 악의 제왕 ‘올 포 원’과의 사투 직후 한 말. ‘올마이트’의 의지는 데쿠와 유에이 고등학교 히어로과로 이어져 왔다. 유에이 2년 차 봄, 히어로 VS 빌런의 전면전이 발발하고 황폐해진 사회에 수수께끼의 남자가 나타난다. 스스로를 ‘올마이트를 대신하는 새로운 상징’이라고 말하는 ‘다크마이트’는 자신의 야망을 위해 ‘개성’으로 거대한 요새를 만들어 마을과 사람들을 차례로 삼켜간다! ‘다크마이트’의 등장과 동시에 특별한 ‘개성’을 지닌 ‘안나’라는 소녀, 그리고 그녀를 ‘아가씨’라고 부르는 ‘줄리오’라는 남자가 나타나는데… 데쿠와 바쿠고, 토도로키, 그리고 유에이 고교 1학년 A반은 ‘다크마이트’에 맞서 세계를 지킬 수 있을까? “다음은 우리다!”', 110, '12', 'NOW_PLAYING', 461.924000, 6.863000, 30568047, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1159311 AND g.name = '애니메이션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1159311 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1159311 AND g.name = '모험';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1159311 AND g.name = 'SF';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '야마시타 다이키', '/rQNdJdZewk7VGP16ZNbpfJ9ZeMd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '야마시타 다이키');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Izuku Midoriya (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '야마시타 다이키';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '오카모토 노부히코', '/41BGKnwmE2573X2ve9rGXeLw3oW.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '오카모토 노부히코');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Katsuki Bakugo (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '오카모토 노부히코';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '카지 유우키', '/8wKdPV11IwowfwoqGqMMNt9hmp6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '카지 유우키');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shoto Todoroki (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '카지 유우키';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '미야노 마모루', '/i8n9U3JlujjyPmiZPHGkpwxkh7X.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '미야노 마모루');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Giulio Gandini (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '미야노 마모루';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '生見愛瑠', '/bZjwmpUt9J3GtRLzNH5LUNDu29s.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '生見愛瑠');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Anna Scervino (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '生見愛瑠';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '미야케 켄타', '/7YL8vM2KYzPMeQqTpHWmNj6s1AP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '미야케 켄타');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dark Might (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '미야케 켄타';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '사쿠라 아야네', '/yPbTmntASE9psPIMhNGU5oo6vIH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '사쿠라 아야네');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Ochako Uraraka (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '사쿠라 아야네';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '이시카와 카이토', '/fzjIkotjUHHs3wgftM9tqdsG8ph.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '이시카와 카이토');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tenya Iida (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '이시카와 카이토';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '魚建', '/3TXI27vtoXBlyJT0lj2fVUL3FJ7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '魚建');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hugo (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '魚建';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '오노 유키', '/oEx13CbNLsHzURdYafkFJYXDjfm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '오노 유키');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kamil (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '오노 유키';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '코토부키 미나코', '/puocmMfvql6X1AvhFTolaV6Vh2r.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '코토부키 미나코');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Deborah (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '코토부키 미나코';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '코바야시 유스케', '/y4ukKDSobZJNuB4H3k89hkrKCDC.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '코바야시 유스케');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paulo (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '코바야시 유스케';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '菊池通武', '/pi49MQHk9jnzJ9altMiiZVCOWIA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '菊池通武');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Simon (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '菊池通武';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '테라소마 마사키', '/eol7Ul4buAam9SmJDuFIWln0Cd3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '테라소마 마사키');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bruno (voice)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 1159311 AND a.name = '테라소마 마사키';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '오카무라 텐사이', '/uOu6uNXRMDZKyXY47T9WTa0cbeY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '오카무라 텐사이');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 1159311 AND d.name = '오카무라 텐사이';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/rSJnz7FqxEIe5uzAZbWSzc8bk5f.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1159311;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/hd1TvTUGjkoYoqvXYfSBpI5Ri9B.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1159311;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (1149912, 'Kelas Bintang - Hot Moms', '2023-02-09', '', '', 0, '', 'RELEASED', 498.713000, 5.700000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1149912 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 1149912 AND g.name = '로맨스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/7dBqZmErtrxN9ghOJoW6SimgDo1.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1149912;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 1149912;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (573435, '나쁜 녀석들: 라이드 오어 다이', '2024-06-05', '용의자가 된 나쁜 녀석들의 화끈한 수사가 시작된다!', '마이애미 강력반 최고의 콤비 마이크와 마커스. 가족 같은 하워드 반장이 사망 전 마약 카르텔 조직의 비리에 연루되었다는 뉴스 속보를 접하게 된다. 하지만 아무도 믿지 말라는 하워드 반장의 비밀 메시지를 받은 마이크와 마커스 형사는 사건의 진실을 밝히기 위해 위험한 수사를 시작한다. 서서히 드러나는 거대한 음모와 마주하게 된 나쁜 녀석들. 그러나 이들 역시 함정에 빠져 사건의 용의자로 지목되며 동료 경찰들은 물론 마약 카르텔 조직에게도 쫓기는 신세가 되고 마는데…', 115, '15', 'RELEASED', 485.607000, 7.497000, 402529640, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 573435 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 573435 AND g.name = '코미디';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '윌 스미스', '/1QqaRZ8neYlqLx7ODZC4as47wUV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '윌 스미스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mike Lowrey', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '윌 스미스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마틴 로런스', '/gIHaPE7THrubUGpK8nQGI0q9EIQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마틴 로런스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marcus Burnett', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '마틴 로런스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '바네사 허진스', '/ssFXWN5li5OWJLgUoFlUDY0ZyPc.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '바네사 허진스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kelly', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '바네사 허진스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '알렉산더 루드위그', '/unP5YUgEdECL2gMLs0zCNya6is6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '알렉산더 루드위그');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dorn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '알렉산더 루드위그';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '파올라 누녜스', '/5k8tBBvoV43iK6u0k2YUSVXPmuK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '파올라 누녜스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Rita', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '파올라 누녜스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '에릭 데인', '/lSs2O89BDyEwi8p0VhqX2jU90Hk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '에릭 데인');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'McGrath', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '에릭 데인';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '요안 그리피드', '/8fZ1h879lO5lcKt9SG2UIXisq1k.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '요안 그리피드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lockwood', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '요안 그리피드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '제이컵 시피오', '/gcZSJy9LZ8DUDP480Q2K1OhL1Ct.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '제이컵 시피오');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Armando', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '제이컵 시피오';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Melanie Liburd', '/diWkE87OnBDaXZkRLLkT78lTcI9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Melanie Liburd');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Christine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Melanie Liburd';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '타샤 스미스', '/viJnHL3BjQ5oqisXklQWGlh29Hx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '타샤 스미스');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Theresa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '타샤 스미스';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '레이 시혼', '/g6niUzFMQOiAcSThWoGk0LlAQRP.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '레이 시혼');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Judy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '레이 시혼';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '티파니 해디쉬', '/pvAYqQD4LXavzDkBqCrC4IgVBur.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '티파니 해디쉬');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tabitha', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '티파니 해디쉬';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '조 판톨리아노', '/cXMOad9KKVBK1lg8EjEbcNPn1OT.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '조 판톨리아노');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Captain Howard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '조 판톨리아노';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '디제이 칼리드', '/2aZXRm1ETaXx6wsVJ22kaUpCWJe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '디제이 칼리드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manny', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '디제이 칼리드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '존 샐리', '/efN5d1FEOVsnvxospYfvn9ebwsk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '존 샐리');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Fletcher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '존 샐리';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bianca Bethune', '/p3XdSCPD2pmoj52mAKDnl87fG2U.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bianca Bethune');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Megan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Bianca Bethune';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dennis Greene', '/ixzTEOlFXTKX6qYDLits0vIv26B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dennis Greene');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reggie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Dennis Greene';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Quinn Hemphill', '/7JBEIMVFjBW9uZ3jlLQxfV4AYiL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Quinn Hemphill');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Callie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Quinn Hemphill';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Derek Russo', '/5x5b61WVyydJV9qHPVIBzefCsMf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Derek Russo');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lintz', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Derek Russo';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Karter Reese Newsome', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Karter Reese Newsome');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Little Marcus', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Karter Reese Newsome';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Levy Tran', '/ungYHOdC0DETelUD8I6FR1bFdn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Levy Tran');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Wolf', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Levy Tran';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jay DeVon Johnson', '/k21WcVCo5TAhKPEAMXSO5g9HC21.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jay DeVon Johnson');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Russ Brown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jay DeVon Johnson';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jeff J.J. Authors', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jeff J.J. Authors');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Felix the Drunk Pilot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jeff J.J. Authors';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nicholas Verdi', '/dKNGciV9NZXhcNtwerzWGCk9lyO.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nicholas Verdi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hijacked Pilot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Nicholas Verdi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Steven Sean Garland', '/oeLWb6c9XnlKgV2pW5hB20ryuFe.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Steven Sean Garland');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'The Banker', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Steven Sean Garland';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jerri Tubbs', '/3oT4Og3EnTb9KsrCrV2MsG53Ung.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jerri Tubbs');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Banker''s Wife', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jerri Tubbs';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jewelianna Ramos-Ortiz', '/6l18Lcxg9wmhPnwJ6O3w0FnxXRf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jewelianna Ramos-Ortiz');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Banker''s Girlfriend', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jewelianna Ramos-Ortiz';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Enoch King', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Enoch King');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Convenience Store Clerk', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Enoch King';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'James Lee Thomas', '/2K9xips6H7e5RL5lKqHZSXsETOV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'James Lee Thomas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Thief', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'James Lee Thomas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jay Shetty', '/mN0lKvfDjSaNByQXbDYPHzLxJAu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jay Shetty');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Police Chaplain', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jay Shetty';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jason Davis', '/thSH5TatER5b1WbgFpGt5YDdOu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jason Davis');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Grice', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jason Davis';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ahmed Lucan', '/kKTco7xlaMtFwrUgh6PEwHYYAyM.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ahmed Lucan');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Ahmed Lucan';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bria Brimmer', '/yv0INjy38ra2AIX5uwcuvmiBHzm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bria Brimmer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nurse', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Bria Brimmer';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alex Pires', '/rVKZxy7Rn34J5WuxBDEKqQ3TgVx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alex Pires');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paramedic', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Alex Pires';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nathan Hesse', '/d3cdL1xbsDr2nfi4nu5LxKjzaGQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nathan Hesse');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trailer Park Redneck', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Nathan Hesse';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jesse Malinowski', '/mZK00u2EWDYdYd41vgnTLbdBy9V.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jesse Malinowski');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Trailer Park Redneck', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jesse Malinowski';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Blanca Goodfriend', '/zRcvQyLapFVd8V3iJFFaZ6yFF1G.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Blanca Goodfriend');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Woman in Car', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Blanca Goodfriend';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jasmin Lawrence', '/cdi49tm5Rc55oFPMUObZx7rl7d7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jasmin Lawrence');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter Johnson', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jasmin Lawrence';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Adriana Sheri', '/sWCAZJSkTU1eRaBXdNHpnLhM7BN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Adriana Sheri');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reporter Cobb', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Adriana Sheri';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Joyner Lucas', '/n95q8exFP5R8XqTyo2YrI0AhuZK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Joyner Lucas');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gang A Leader', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Joyner Lucas';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Marybel Rodriguez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Marybel Rodriguez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Newscaster', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Marybel Rodriguez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Austin Carter', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Austin Carter');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Newscaster', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Austin Carter';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dwight Turner', '/kaCEcDk4OaIvMrD0KjQC6qopVcV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dwight Turner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Newscaster', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Dwight Turner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jenna Kanell', '/xrWxxvNsZvBVHeeS3RIlhi8rGyA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jenna Kanell');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nicole', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Jenna Kanell';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rob Mars', '/hJFCXTiwTc4sh0c8eFTveBBEwYI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rob Mars');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Analyst', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Rob Mars';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bobby Hernandez', '/z2QZ5YSHxhHOKYSGuRqanICNkXU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bobby Hernandez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sniper', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Bobby Hernandez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '마이클 베이', '/rkC7lei20x5xlFH4SivAXXBh6uR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '마이클 베이');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Porsche Driver', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '마이클 베이';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Khaby Lame', '/j8PaUprRl9DoSdgbBLkuc5lpVFV.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Khaby Lame');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Man on the Street (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = 'Khaby Lame';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '아딜 엘 아르비', '/hpl12TXFDUjzomftx7zST3M2aLg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '아딜 엘 아르비');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manny''s Goon #1 (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '아딜 엘 아르비';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '빌랄 팔라흐', '/thwiN6FPRkCtzrP7PrmrwaEIFtv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '빌랄 팔라흐');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Manny''s Goon #2 (uncredited)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 573435 AND a.name = '빌랄 팔라흐';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '아딜 엘 아르비', '/hpl12TXFDUjzomftx7zST3M2aLg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '아딜 엘 아르비');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 573435 AND d.name = '아딜 엘 아르비';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '빌랄 팔라흐', '/thwiN6FPRkCtzrP7PrmrwaEIFtv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '빌랄 팔라흐');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 573435 AND d.name = '빌랄 팔라흐';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/wIrhEUBWjRmZuL1Ix41cF2LhJrW.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 573435;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/tncbMvfV0V07UZozXdBEq4Wu9HH.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 573435;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (957452, '더 크로우', '2024-08-21', '죽음마저 두려워할 사랑!', '인생에서 가장 어둡고 외로웠던 순간, 자신과 비슷한 영혼을 가진 ''셸리''를 만나 영원한 사랑을 약속한 ''에릭''. 완벽한 행복을 만끽하던 그때, 두 사람은 의문의 괴한들에게 무참히 살해 당하고 ''셸리''는 과거의 끔찍한 실수로 지옥에 끌려가게 된다. 지옥에서 ''셸리''를 되찾기 위해 ''에릭''은 까마귀의 저주를 받아 불사의 몸이 되고 죽여도 죽지 않는 복수의 화신으로 부활하게 되는데…', 111, '', 'RELEASED', 444.514000, 5.900000, 24008667, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 957452 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 957452 AND g.name = '판타지';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 957452 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '빌 스카스가드', '/wGQidITqyDl4Igmq9TCQjRpegsk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '빌 스카스가드');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eric', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = '빌 스카스가드';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'FKA twigs', '/8bUUu7jPEY1aQgAtJXM2NyYpfgN.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'FKA twigs');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Shelly', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'FKA twigs';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '대니 휴스턴', '/7Wdh73SltnllH4KVd64PvqKQ5NJ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '대니 휴스턴');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Vincent Roeg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = '대니 휴스턴';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Josette Simon', '/uLvLGR6a60To8AAlj0C5124d7Xu.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Josette Simon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Sophia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Josette Simon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Laura Birn', '/7aFAUPKj1joqQ2VOWOuGh88biuH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Laura Birn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marion', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Laura Birn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sami Bouajila', '/xq8TMMCA4RI2omGxbPtLVsBMWX8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sami Bouajila');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kronos', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Sami Bouajila';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Karel Dobrý', '/mcvTqsqIPTVZiT4saALPljNUQ5B.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Karel Dobrý');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Roman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Karel Dobrý';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jordan Bolger', '/zGSxXrllgm3MNVT0jjvnAQFacPS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jordan Bolger');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chance', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Jordan Bolger';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sebastian Orozco', '/rLp1vVGxKlczXKns8dfjSlGDAIU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sebastian Orozco');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Dom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Sebastian Orozco';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Bowles', '/bJFHfEI7VxmfhHw7esTIS0QVeTK.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Bowles');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Wickham', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'David Bowles';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tundy Smith', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tundy Smith');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Lex', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Tundy Smith';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Samba Goldin', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Samba Goldin');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jay', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Samba Goldin';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Isabella Wei', '/1I8orviIp6GXv7m3jZPtf64M8nw.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Isabella Wei');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Zadie', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Isabella Wei';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jordan Haj', '/fmN40T8ZrUhPvWeqVDYGIcIE5GR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jordan Haj');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Adam', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Jordan Haj';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dukagjin Podrimaj', '/dT0SxaqOjZiWtdMbnp2D1gRonnf.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dukagjin Podrimaj');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Detective Milch', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Dukagjin Podrimaj';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Darija Pavlovičová', '/aJBTDk6n9pF9TgBasQrpQMgu7QY.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Darija Pavlovičová');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Gray', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Darija Pavlovičová';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Caolan O''Neil-Forde', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Caolan O''Neil-Forde');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Punk Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Caolan O''Neil-Forde';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Janek Gregor', '/7tWcZBNxWgt8yLUVQKTEGwxXXV3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Janek Gregor');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Large Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Janek Gregor';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lukáš Duy Anh Tran', '/7wWDquwUUbP7Ui6jIxGAEJxvLpn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lukáš Duy Anh Tran');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Skinny Inmate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Lukáš Duy Anh Tran';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Solo Uniacke', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Solo Uniacke');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Young Eric', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Solo Uniacke';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Brian Caspe', '/orGBrMh5z8Ao7jopzjgbxk0qDAn.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Brian Caspe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Simon Elbe / Therapist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Brian Caspe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Peter Parker Mensah', '/tTK4y9v2DMUQ6PQcEJRwcb6WxBr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Peter Parker Mensah');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kelly (Guard)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Peter Parker Mensah';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gregory Gudgeon', '/nUmytl8enaRWd0BvcXHsL3E5KY9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gregory Gudgeon');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'James', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Gregory Gudgeon';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bethany Adams', '/r1a7VWnMNVmjbJOkm5fDYkCOEkG.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bethany Adams');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Clinical Aid', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Bethany Adams';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jakub Strach', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jakub Strach');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chance Friend #4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Jakub Strach';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Robert James Rich', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Robert James Rich');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chance Friend #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Robert James Rich';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Vladimír Nezdaril', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Vladimír Nezdaril');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Change Friend #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Vladimír Nezdaril';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Beáta Golová', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Beáta Golová');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Chance Friend #3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Beáta Golová';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jim High', '/lGOBQHhRQcqsaLHtl5I1cOqaYy7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jim High');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Uniformed Cop #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Jim High';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Seam Turay', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Seam Turay');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Uniformed Cop #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Seam Turay';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Lada Bočková', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Lada Bočková');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soloist #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Lada Bočková';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Matoušek', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Matoušek');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Soloist #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Daniel Matoušek';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'David Evropejský', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'David Evropejský');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Mentor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'David Evropejský';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Monika Kvasničková', '/gkVeU2hjOVCJyogdoud37pQZM3k.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Monika Kvasničková');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Eric''s Mother', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Monika Kvasničková';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Andrea Miltner', '/bQ3w6aaMWpptbUKkn60LpCtbfDg.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Andrea Miltner');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Music Teacher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Andrea Miltner';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paul Maynard', '/pAWkyROPHN1b8JLdAdYmGU0c9bR.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paul Maynard');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Card Dealer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Paul Maynard';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Leona Skleničková', '/qmbuDTKzrk1dcPy6ecXGHKHNeRI.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Leona Skleničková');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Emma', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Leona Skleničková';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sinéad Phelps', '/oTARQq8oYMkaSqnTZJ8b6QsWO7A.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sinéad Phelps');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'EMT #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Sinéad Phelps';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Daniel Szelezsán', '/mVa5X9RPNxyI5pTTbYkX3djdmRq.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Daniel Szelezsán');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'EMT #2 Kronos Look Alike', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Daniel Szelezsán';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Emmanuel Iloegbunam', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Emmanuel Iloegbunam');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Drug Dealer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Emmanuel Iloegbunam';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Paul Dean', '/7VZQPq3ogsSrUDUMUirZb1WNHgp.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Paul Dean');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Paul Dean';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Antonín Hausknecht', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Antonín Hausknecht');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Friendly Driver (Stunt Driver)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Antonín Hausknecht';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Baha Chbani', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Baha Chbani');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arabic Businessman #2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Baha Chbani';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ahmad Alhadi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ahmad Alhadi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Arabic Businessman #1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 957452 AND a.name = 'Ahmad Alhadi';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT 'Rupert Sanders', '/jG07WemmHOWQvYnKPSdNGioGg7A.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = 'Rupert Sanders');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 957452 AND d.name = 'Rupert Sanders';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/rcedPQYtPIBK5uN3gJJyKdDCPax.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 957452;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/Asg2UUwipAdE87MxtJy7SQo08XI.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 957452;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (173705, '여교사: 학생의 눈앞에서', '1982-04-09', '', '사랑스러운 레이코는 소름 끼치는 오래된 고등학교에서 새로운 교직을 얻었습니다. 그녀는 매우 매력적인 여성이며 같은 반의 어린 학생들은 그녀에게 반했습니다. 어느 날 밤, 테니스 연습을 마친 그녀는 탈의실 샤워실에서 얼굴에 스타킹을 가린 남자에게 잔인하게 폭행을 당합니다. 알몸으로 충격에 빠진 채 바닥에 남겨진 그녀는 미친 남자가 남긴 퍼즐 조각 하나를 발견합니다. 며칠 후, 한 쌍의 학생이 테니스 팀에서 누군가를 쫓아낸 레이코에게 변태적인 성적 복수를 합니다. 이 학생들 중 한 명이 탈의실에서 그녀를 잔인하게 만든 남자일까요? 이상한 퍼즐 조각의 주인은 누구입니까? 수수께끼가 풀리면서 레이코는 자신의 성적 충동과 운명을 받아들여야 합니다.', 69, '', 'RELEASED', 451.698000, 7.000000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 173705 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 173705 AND g.name = '미스터리';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 173705 AND g.name = '공포';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rushia Santô', '/83wE43nx2rnSiovDW6LF6iPONMU.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rushia Santô');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Reiko / Teacher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = 'Rushia Santô';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Rina Oka', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Rina Oka');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Kumi / Girl Friend of Takuya', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = 'Rina Oka';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Kyôko Sagami', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Kyôko Sagami');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Syôko / Teacher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = 'Kyôko Sagami';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '北見敏之', '/bcLSC5ZT7VmASi3om23k1EukUyr.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '北見敏之');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Akiyama / Teacher', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = '北見敏之';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '中根徹', '/vPCb73DYW5wyYWt78c5lCm0jPnS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '中根徹');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Takuya / High School Boy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = '中根徹';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hiromichi Hori', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hiromichi Hori');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Takashi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = 'Hiromichi Hori';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Masaaki Kishi', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Masaaki Kishi');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '桑田', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = 'Masaaki Kishi';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Toshio Yoshikawa', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Toshio Yoshikawa');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, '若森', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 173705 AND a.name = 'Toshio Yoshikawa';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '上垣保朗', '/wdF0fCsWMSGKrI9mfvB4Zpa1nhL.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '上垣保朗');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 173705 AND d.name = '上垣保朗';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/rwGW7zhFKaojtJiSMnoLyVkKZnx.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 173705;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/27FRFe8lu1C1LStWmzwOa87vo98.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 173705;

INSERT INTO movie (tmdb_id, title, release_date, tagline, overview, 
    runtime, certification, status, popularity, vote_avg, revenue, 
    created_at, updated_at) 
VALUES (991610, '인베이젼', '2024-04-11', '', '아무런 경고도 없이 이웃 독재 국가 베라과가 퀴라소와 아루바를 공격한다. 네덜란드의 정치인들은 당황한다. 갈등이 급격히 고조되면서 세 명의 젊은 해병대원들이 나서서 행동해야 한다. 아루바의 병영은 공격을 받고 있고, 영공은 폐쇄되었지만, 네덜란드 대사는 여전히 적대 지역에서 대피하지 못한 상태다. 갓 임명된 해병대원들은 자신들의구조 임무가 시간 싸움이 되었다는 것을 깨닫는다.', 92, '15', 'RELEASED', 414.592000, 4.900000, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 991610 AND g.name = '액션';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 991610 AND g.name = '드라마';

INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, genre g
WHERE m.tmdb_id = 991610 AND g.name = '스릴러';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Tarikh Janssen', '/v2i38M9I8CTTBHVvHpI703flM1J.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Tarikh Janssen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Andy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Tarikh Janssen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '하이스 블롬', '/fBt9qOW4EA1miKaLXFIMYOHAled.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '하이스 블롬');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Jack', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = '하이스 블롬';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ortál Vriend', '/dhb5Xa3q4L1JB0EQkFzRR8RcHq6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ortál Vriend');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Noa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Ortál Vriend';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jasha Rudge', '/5oGoUNizhJdklX7WoDCD05IPnNQ.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jasha Rudge');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Judsel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Jasha Rudge';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT '페드야 반 휴엣', '/fIN5xMtn1B7XD0HD5Qqg6uZIDd8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '페드야 반 휴엣');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Stan Bot', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = '페드야 반 휴엣';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Gijs Scholten van Aschat', '/w36EJOfFBZvjXvpurXuZ3CA5NQa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Gijs Scholten van Aschat');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Maurits Caan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Gijs Scholten van Aschat';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Raymond Thiry', '/eta0sCxA0bTJMIVxkIYFVdwe47S.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Raymond Thiry');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'John Brouwer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Raymond Thiry';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Uriah Havertong', '/46BQbkPfNNWjxv5iqgj29HQ1WH0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Uriah Havertong');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Daniël', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Uriah Havertong';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jonas Smulders', '/5N8Z0QJ9b3SQxxFZSygvtSyTlnm.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jonas Smulders');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Tom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Jonas Smulders';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sia Cyrroes', '/f9forSCzUFpRl6pNlyH6vUauNMv.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sia Cyrroes');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cem', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Sia Cyrroes';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Nyncke Beekhuyzen', '/yx2KEFqWRo5pq4JLZbxm3jizzLo.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Nyncke Beekhuyzen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Marjon', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Nyncke Beekhuyzen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Hugo Haenen', '/qkVJocscfY5DpID0zucZgm5vxsE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Hugo Haenen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Premier', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Hugo Haenen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Mark Rietman', '/xxVqR3iww6ZUfViSje6VUkYuL2T.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Mark Rietman');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bruno Staal', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Mark Rietman';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Carine Crutzen', '/e7ZdAc3a7AoFoaiNgv0n3CVjtxx.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Carine Crutzen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Janice Kroes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Carine Crutzen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Xander van Vledder', '/b8WkREb7WKJsqDIxDTx7sMw8lgk.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Xander van Vledder');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Taco van Vlijmen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Xander van Vledder';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dennis Rudge', '/lAfxyrEU7izV42upXn1dR8EQrX5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dennis Rudge');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Carl', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Dennis Rudge';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Ziarah Janssen', '/32uti8i1QlZbz9jlds1QCNpQU9x.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Ziarah Janssen');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Isa', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Ziarah Janssen';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Matteo van der Grijn', '/lhPJPGv73Hl3qCbcykzuV4KD0tE.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Matteo van der Grijn');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Guus Piwek', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Matteo van der Grijn';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Alexander Schuitema', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Alexander Schuitema');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Bobby Froost', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Alexander Schuitema';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Sabri Saddik', '/9uLSFaAP9scwTuRdL1Bkms10SU0.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Sabri Saddik');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Will Oostgaarde', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Sabri Saddik';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Chiem Vreeken', '/8wCqwANP0T2e5FoEvVFnMknP3bX.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Chiem Vreeken');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Paul Verhoeven', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Chiem Vreeken';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Bram Klappe', '/1eesVmlXH2yp6WfLuygX5cvkYi.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Bram Klappe');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Cas van Beek', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Bram Klappe';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Oscar Foronda', '/9pJU9eZOZNp4jGr1lK2dRFBdxUa.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Oscar Foronda');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Hector Lagarto', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Oscar Foronda';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Fidel Garcia Cortez', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Fidel Garcia Cortez');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Diego Cruz', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Fidel Garcia Cortez';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Martijn Hillenius', '/ryDZt94EuqPLjPa441wpb9dvSgd.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Martijn Hillenius');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Father boy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Martijn Hillenius';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Jorrit Ruijs', '/84BvAmfKWRB3JSchZeVQSA1hDCS.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Jorrit Ruijs');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Journalist', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Jorrit Ruijs';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Dian Biemans', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Dian Biemans');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Nina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Dian Biemans';

INSERT INTO actor (name, profile, created_at, updated_at)
SELECT 'Renze Klamer', '/pHJ01uTTelaeNT1rIMKSFSaPfKA.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = 'Renze Klamer');

INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
SELECT m.id, a.id, 'Talkshowhost', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, actor a
WHERE m.tmdb_id = 991610 AND a.name = 'Renze Klamer';

INSERT INTO director (name, profile, created_at, updated_at)
SELECT '바비 보어만스', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '바비 보어만스');

INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m, director d
WHERE m.tmdb_id = 991610 AND d.name = '바비 보어만스';

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/osPKnn1Q1BoZ88kLcksR7iPJKVg.jpg', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 991610;

INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
SELECT m.id, 0, 0, '/rivlyJuBKNnSgzOU0GkEWIuawjt.jpg', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM movie m WHERE m.tmdb_id = 991610;

