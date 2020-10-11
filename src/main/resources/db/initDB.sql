DROP TABLE EMPLOYEE IF EXISTS;
DROP TABLE DEPARTMENT IF EXISTS;
DROP SEQUENCE global_seq IF EXISTS;

CREATE SEQUENCE GLOBAL_SEQ AS INTEGER START WITH 100000;

CREATE TABLE department
(
    id          INTEGER GENERATED BY DEFAULT AS SEQUENCE GLOBAL_SEQ PRIMARY KEY,
    name        VARCHAR(255) NOT NULL
);

CREATE TABLE employee
(
    id              INTEGER GENERATED BY DEFAULT AS SEQUENCE GLOBAL_SEQ PRIMARY KEY,
    department_id   INTEGER         NOT NULL,
    lastName        VARCHAR(255)    NOT NULL,
    firstName       VARCHAR(255)    NOT NULL ,
    middleName      VARCHAR(255)    NOT NULL ,
    dateBirthday    TIMESTAMP       NOT NULL,
    salary          DECIMAL(20, 2)         NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE
)