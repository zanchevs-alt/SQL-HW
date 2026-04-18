CREATE TABLE workshop_roster ( 
    roster_id          INT PRIMARY KEY NOT NULL, 
    contact_email      TEXT UNIQUE, 
    display_name       TEXT NOT NULL, 
    wants_certificate  BOOLEAN NOT NULL DEFAULT 0, 
    start_date         DATE NOT NULL,
    last_activity      DATETIME NOT NULL, 
    completion_score   REAL CHECK (completion_score >= 0 AND completion_score <= 100),
    group_label        TEXT DEFAULT 'starter'
);

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date, last_activity, completion_score, group_label) 
VALUES (1, 'mika@campus.com', 'Mika', 1, '2026-04-01', '2026-04-14 08:15:00', 94.5, 'advanced'); 
 
INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date, last_activity, completion_score, group_label) 
VALUES (2, 'matan@campus.com', 'Matan', 1, '2026-04-05', '2026-04-12 18:20:00', 82.0, 'advanced'); 

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date, last_activity, completion_score, group_label) 
VALUES (3, 'nora@campus.com', 'Nora', 0, '2026-04-07', '2026-04-09 10:00:00', 74.0, 'starter'); 

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date, last_activity, completion_score, group_label) 
VALUES (4, 'liam@campus.com', 'Liam', 1, '2026-04-10', '2026-04-15 07:45:00', 88.0, 'regular'); 

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date, last_activity, completion_score, group_label) 
VALUES (5, 'dana@campus.com', 'Dana', 0, '2026-04-11', '2026-04-11 21:05:00', 69.5, 'starter'); 

SELECT *
FROM   workshop_roster

SELECT display_name, contact_email, completion_score
FROM   workshop_roster

SELECT *
FROM   workshop_roster
WHERE  wants_certificate = FALSE
  AND  last_activity < '2026-04-10';
  
SELECT *
FROM   workshop_roster
WHERE  display_name LIKE 'm%'
  AND  contact_email LIKE 'm%';

SELECT *
FROM   workshop_roster
WHERE completion_score < 85   

INSERT INTO workshop_roster (roster_id, contact_email, display_name, wants_certificate, start_date, last_activity, completion_score, group_label) 
VALUES (6, 'mika@campus.com', 'Maya', 0, '2026-04-19', '2026-04-19 10:00:00', 50.0, 'starter');
contact_email      TEXT UNIQUE

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date, last_activity, completion_score, group_label) 
VALUES (7, 'adam@campus.com', 'Adam', 0, '2026-04-11', '2026-04-11 21:05:00', 120, 'starter'); 
completion_score   REAL CHECK (completion_score >= 0 AND completion_score <= 100)
