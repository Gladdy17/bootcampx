-- Create cohorts table
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

-- Create students table
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cohort_id INT REFERENCES cohorts(id) ON DELETE CASCADE
);

