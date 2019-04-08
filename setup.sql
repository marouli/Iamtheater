CREATE TABLE play (
  play_id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  director TEXT,
  description TEXT NOT NULL,
  language TEXT NOT NULL,
  play_url TEXT NOT NULL
);

CREATE TABLE theater (
    theater_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    theater_url TEXT NOT NULL
);

CREATE TABLE showtime (
    showtime_id SERIAL PRIMARY KEY,
    play_id INTEGER NOT NULL REFERENCES play,
    theater_id INTEGER NOT NULL REFERENCES theater,
    theater_room TEXT,
    play_date DATE NOT NULL,
    play_time TIME NOT NULL,
    price TEXT 
);

CREATE TABLE newsletter_users (
    user_id SERIAL PRIMARY KEY,
    email TEXT NOT NULL
);