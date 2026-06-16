-- seed.sql
-- Write your INSERT statements here.
-- Follow the same dependency order as schema.sql.

INSERT INTO artists (name, country, genre)
    VALUES
        ('ABBA', 'Sweden', 'Pop'),
        ('Blondie', 'United States', 'New Wave'),
        ('The Cure', 'United Kingdom', 'Post-Punk');

INSERT INTO tracks (title, artist_id, duration_secs, release_date, play_count)
    VALUES
        ('Dancing Queen', 1, 232, '1976-08-16', 4821),
        ('Mamma Mia', 1, 213, '1975-08-27', 3902),
        ('The Winner Takes It All', 1, 295, '1980-07-21', 5103),
        ('Waterloo', 1, 168, '1974-03-04', 6234),
        ('Heart of Glass', 2, 258, '1979-01-20', 7654),
        ('Call Me', 2, 243, '1980-02-01', 5490),
        ('One Way or Another', 2, 191, '1979-09-01', 9102),
        ('Atomic', 2, 237, '1980-09-08', 4120),
        ('Lovesong', 3, 201, '1989-08-12', 6721),
        ('Friday I''m in Love', 3, 219, '1992-05-01', 8901),
        ('Close to Me', 3, 213, '1985-09-20', 3301),
        ('Boys Don''t Cry', 3, 156, '1979-06-28', 2890);

INSERT INTO users (username, join_date)
    VALUES
        ('nova_ears', '2022-03-14'),
        ('rhythmbox', '2021-07-09'),
        ('waveform99', '2023-01-15'),
        ('deeplistener', '2020-11-22'),
        ('trackjunkie', '2022-08-03');

INSERT INTO playlists (title, owner_id, created_date)
    VALUES
        ('Late Night Drift', 1, '2022-04-01'),
        ('Commute Mix', 2, '2021-09-15'),
        ('Sunday Slow', 3, '2023-02-20'),
        ('Focus Zone', 4, '2021-01-10');

INSERT INTO playlist_tracks (playlist_id, track_id)
    VALUES
        (1, 1),
        (1, 5),
        (1, 10),
        (1, 9),
        (2, 2),
        (2, 7),
        (2, 3),
        (2, 6),
        (3, 4),
        (3, 11),
        (3, 5),
        (3, 12),
        (4, 7),
        (4, 9),
        (4, 3),
        (4, 1),
        (4, 6);

INSERT INTO listening_events (user_id, track_id, listened_at, completion_pct, device_type)
    VALUES
        (1, 1, '2024-11-01T22:14:00Z', 87, 'mobile'),
        (1, 1, '2024-11-02T23:01:00Z', 100, 'desktop'),
        (2, 2, '2024-11-03T08:22:00Z', 45, 'mobile'),
        (3, 7, '2024-11-03T12:05:00Z', 100, 'desktop'),
        (4, 6, '2024-11-04T09:11:00Z', 73, 'mobile'),
        (1, 3, '2024-11-04T21:30:00Z', 100, 'desktop'),
        (2, 9, '2024-11-05T07:45:00Z', 62, 'mobile'),
        (5, 7, '2024-11-05T14:22:00Z', 100, 'desktop'),
        (3, 4, '2024-11-05T18:30:00Z', 88, 'tablet'),
        (4, 1, '2024-11-06T11:00:00Z', 100, 'desktop'),
        (1, 9, '2024-11-06T22:15:00Z', 55, 'mobile'),
        (2, 5, '2024-11-07T08:00:00Z', 100, 'mobile'),
        (5, 3, '2024-11-07T16:45:00Z', 90, 'desktop'),
        (3, 12, '2024-11-08T13:20:00Z', 78, 'tablet'),
        (4, 7, '2024-11-08T20:00:00Z', 100, 'desktop'),
        (1, 6, '2024-11-09T23:10:00Z', 100, 'mobile'),
        (2, 10, '2024-11-10T07:30:00Z', 42, 'mobile'),
        (5, 9, '2024-11-10T12:00:00Z', 100, 'desktop');

-- SELF-GENERATED DATA
INSERT INTO user_playlist_follows (user_id, playlist_id)
    VALUES
        (1, 1),
        (2, 1),
        (3, 1),
        (4, 1),
        (3, 3),
        (4, 3),
        (1, 3),
        (4, 4);

