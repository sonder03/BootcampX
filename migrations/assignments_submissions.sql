CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);


-- Add the tables to the database - 

    -- bootcampx=# 
    -- From psql, type \i migrations/assignments_submissions.sql
    -- Now enter \dt into your psqlsession to make sure the two tables have been created.



-- Download both of the .sql files using wget into the seeds directory - 
-- labber@LAPTOP-FL6TDI3N:~/lighthouse/GitHub/BootcampX$ 
    --  wget http://bit.ly/2N1uWQy -O seeds/assignments_seeds.sql
    --  wget http://bit.ly/33vpmMb -O seeds/assignment_submissions_seeds.sql


--Run the assignments_seeds.sql and assignment_submissions_seeds.sql files against the bootcampx database - 

    -- \i seeds/assignments_seeds.sql
    -- \i seeds/assignment_submissions_seeds.sql