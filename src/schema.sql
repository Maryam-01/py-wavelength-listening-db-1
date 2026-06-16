-- schema.sql
-- Write your CREATE TABLE statements here.
-- Work through the tables in dependency order:
-- tables with no foreign keys first, then tables that reference them.

CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(100),
    genre VARCHAR(100)
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    join_date DATE NOT NULL
);

CREATE TABLE tracks (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist_id INT NOT NULL REFERENCES artists(artist_id),
    duration_secs INT NOT NULL,
    release_date DATE,
    play_count INT NOT NULL DEFAULT 0 CHECK (play_count >= 0
    )

);

CREATE TABLE playlists (
    playlist_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    owner_id INT NOT NULL REFERENCES users(user_id),
    created_date  DATE NOT NULL
);

CREATE TABLE playlist_tracks (
    playlist_id INT NOT NULL REFERENCES playlists(playlist_id) ON DELETE CASCADE,
    track_id  INT NOT NULL REFERENCES tracks(track_id) ON DELETE CASCADE,
    PRIMARY KEY (playlist_id, track_id)
);

CREATE TABLE user_playlist_follows (
    user_id INT NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    playlist_id INT NOT NULL REFERENCES playlists(playlist_id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, playlist_id)
);



CREATE TABLE listening_events (
    event_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    track_id INT NOT NULL REFERENCES tracks(track_id) ON DELETE CASCADE,
    listened_at TIMESTAMPTZ NOT NULL,
    completion_pct NUMERIC(5,2) NOT NULL CHECK (completion_pct >= 0 AND completion_pct <= 100),
    device_type VARCHAR(50) NOT NULL
);














