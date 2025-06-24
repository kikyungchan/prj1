CREATE DATABASE prj1;

USE prj1;

# 게시물테이블
CREATE TABLE board
(
    id         INT AUTO_INCREMENT NOT NULL,
    title      VARCHAR(500)       NOT NULL,
    content    VARCHAR(10000)     NOT NULL,
    writer     VARCHAR(120)       NOT NULL,
    created_at datetime           NOT NULL DEFAULT NOW(),
    CONSTRAINT pk_board PRIMARY KEY (id)
);

#페이징 용 글 복사
INSERT INTO board
    (title, content, writer)
SELECT title, content, writer
FROM board;

SELECT COUNT(*)
FROM board;

# 회원 테이블
CREATE TABLE member
(
    id         VARCHAR(15)  NOT NULL,
    password   VARCHAR(255) NOT NULL,
    nick_name  VARCHAR(15)  NOT NULL UNIQUE,
    info       VARCHAR(500) NULL,
    created_at datetime     NOT NULL DEFAULT NOW(),
    CONSTRAINT pk_member PRIMARY KEY (id)
);

DROP TABLE member;


SELECT *
FROM member;

# 회원만 글을 작성할 수 있으므로
# board.writer를 member.id로 수정
# 외래키 제약 사항 추가

#     유저이름
# 게시판
# 안녕

UPDATE board
SET writer ='게시판'
WHERE id % 2 = 1;

UPDATE board
SET writer ='안녕'
WHERE id % 2 = 0;

# 외래키 제약 사항 추가
ALTER TABLE board
    ADD FOREIGN KEY (writer) REFERENCES member (id);



