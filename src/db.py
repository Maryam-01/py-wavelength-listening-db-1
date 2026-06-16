# db.py
# Connect to the wavelength database and verify your schema.


import psycopg2
# db.py
# Connect to the wavelength database and verify your schema.

import psycopg2


def fetch_table_names():
    # Your `psycoph2.connect(...)` method may need the `user="..."` and `password="..."` keys, depending on how your postgres is set up
    # You may also store the strings supplied to your `psycoph2.connect(...)` method in a `credentials.py` file, which should then be added to your `.gitignore` file.
    conn = psycopg2.connect(dbname="wavelength", host="localhost")
    cursor = conn.cursor()

    sql_select_tables = "SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' ORDER BY table_name"
    cursor.execute(sql_select_tables)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()
    return rows


def select_five_tracks():
    # Your `psycoph2.connect(...)` method may need the `user="..."` and `password="..."` keys, depending on how your postgres is set up
    # You may also store the strings supplied to your `psycoph2.connect(...)` method in a `credentials.py` file, which should then be added to your `.gitignore` file.
    conn = psycopg2.connect(dbname="wavelength", host="localhost")
    cursor = conn.cursor()
    
    sql_select_5_tracks = "SELECT * FROM tracks LIMIT 5;"
    cursor.execute(sql_select_5_tracks)
    rows = cursor.fetchall()
    
    cursor.close()
    conn.close()
    return rows


if __name__ == "__main__":
    tables = fetch_table_names()
    for table in tables:
        print(table)

    tracks = select_five_tracks()
    for track in tracks:
        print(track)