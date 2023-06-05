-- sex_code 
INSERT INTO sex_code_id
(SEX, SEX_CODE_ID)
VALUES 
('남', 'S_01');

INSERT INTO sex_code_id
(SEX, SEX_CODE_ID)
VALUES 
('여', 'S_02');

-- address_code
INSERT INTO address_code_id
(ADDRESS, ADDRESS_CODE_ID)
VALUES 
('서울시',	'A_01'),
('뉴욕시',	'A_02'),
('런던시',	'A_03'),
('파리시',	'A_04'),
('도쿄시',	'A_05');

-- members_information
INSERT INTO `db_members`.`members_information`
(`NAME`,
`AGE`,
`PHONE`,
`MEMBERS_ID`,
`SEX_CODE`,
`ADDRESS_CODE`)
VALUES
('John', 25, '010-1234-5678', 'M-01', 'S_01', 'A_01'),
('Emily', 30, '555-1234-5678', 'M-02', 'S_02', 'A_02'),
('Alex', 35, '444-1234-5678', 'M-03', 'S_01', 'A_03'),
('Lisa', 28, '333-1234-5678', 'M-04', 'S_02', 'A_04'),
('Mike', 32, '222-1234-5678', 'M-05', 'S_01', 'A_05');

-- hobby_code
INSERT INTO hobby_code
(HOBBYS, HOBBY_CODE_ID)
VALUES 
('음악 감상',	'H_01'),
('요리',	'H_02'),
('여행',	'H_03'),
('독서',	'H_04'),
('스포츠', 'H_05'),
('영화',	'H_06'),
('미술',	'H_07'),
('등산',	'H_08'),
('게임',	'H_09'),
('요가',	'H_10');

-- members_hobby
INSERT INTO members_hobby
(MEMBERS_ID, HOBBY_CODE_ID)
VALUES 
('M-01',	'H_01'),
('M-01',	'H_02'),
('M-02',	'H_03'),
('M-02',	'H_04'),
('M-03', 'H_05'),
('M-03',	'H_06'),
('M-04',	'H_07'),
('M-04',	'H_08'),
('M-05',	'H_09'),
('M-05',	'H_10');

-- members_login
INSERT INTO members_login
(EMAIL, MEMBERS_ID, MEMBERS_LOGIN_ID)
VALUES 
('john@example.com', 'M-01', 'C_01'),
('emily@example.com', 'M-02', 'C_02'),
('alex@example.com', 'M-03', 'C_03'),
('lisa@example.com', 'M-04', 'C_04'),
('mike@example.com', 'M-05', 'C_05');   



