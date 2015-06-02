-- HUBBUB 5 BootStrap - use jdbc:derby://localhost:1527/hubbub5;username=javauser;password=javauser (jdbc/hubbub5) Hubbub5PU
DROP TABLE PROFILES;
DROP TABLE POSTS;
DROP TABLE USERS;
CREATE TABLE USERS (
    username VARCHAR(10) NOT NULL UNIQUE,
    password VARCHAR(10) NOT NULL,
    joindate DATE DEFAULT CURRENT_DATE,
    profileid INT NOT NULL,
    id INT GENERATED ALWAYS AS IDENTITY (START WITH 1,INCREMENT BY 1) PRIMARY KEY
);
CREATE TABLE PROFILES (
    biography VARCHAR(1024),
    email VARCHAR(50),
    picture BLOB(200K),
    pictype VARCHAR(30),
    id INT GENERATED ALWAYS AS IDENTITY (START WITH 1,INCREMENT BY 1) PRIMARY KEY    
);
CREATE TABLE POSTS (
    content VARCHAR(140) NOT NULL,
    authorid INT NOT NULL,
    postdate DATE NOT NULL DEFAULT CURRENT_DATE,
    id INT GENERATED ALWAYS AS IDENTITY (START WITH 1,INCREMENT BY 1) PRIMARY KEY
);
ALTER TABLE POSTS ADD FOREIGN KEY (authorid) REFERENCES USERS (id) ON DELETE CASCADE;
ALTER TABLE USERS ADD FOREIGN KEY (profileid) REFERENCES PROFILES (id) ON DELETE CASCADE;
INSERT INTO PROFILES (biography,email) VALUES
    ('',''),
    ('',''),
    ('I like long walks on the beach.','awesome@widgets.inc');
INSERT INTO USERS (username,password,profileid) VALUES
    ('johndoe','password',3),
    ('janedoe','password',1),
    ('jilljack','password',2);
INSERT INTO POSTS (content,authorid) VALUES 
    ('Hello, World!',1),
    ('This is fun!',2),
    ('Stop, already!',3);
